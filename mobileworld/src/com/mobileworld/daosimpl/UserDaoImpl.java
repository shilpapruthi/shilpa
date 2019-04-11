package com.mobileworld.daosimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import com.mobileworld.daos.UserDao;
import com.mobileworld.models.User;
import com.mobileworld.utility.ConnectionProvider;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean registerUser(User userObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into UserTable values(?,?,?,?,?)");
			ps.setString(1,userObj.getEmail());
			ps.setString(2,userObj.getFirstName());
			ps.setString(3,userObj.getLastName());
			ps.setString(4,userObj.getGender());
			
			/*Converting java.util.Date into java.sql.Date*/
			Date dateOfBirth=userObj.getDateOfBirth();
			long l=dateOfBirth.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(5, dob);
			
			int i=ps.executeUpdate();
			if(i!=0){
				ps=conn.prepareStatement("insert into LoginTab values(?,?,?)");
				ps.setString(1, userObj.getEmail());
				ps.setString(2,userObj.getPassword());
				ps.setString(3,"Customer");
				int j=ps.executeUpdate();
				if(j!=0)
				return true;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public User getUser(String email) {
		try {
			System.out.println(email);
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from UserTable where emailId=?");
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
					String em=rs.getString(1);
					String fname=rs.getString(2);
					String lname=rs.getString(3);
					String gen=rs.getString(4);
					java.sql.Date dob=rs.getDate(5);
					
					User obj1=new User();
					obj1.setEmail(em);
					obj1.setFirstName(fname);
					obj1.setLastName(lname);
					obj1.setGender(gen);
					obj1.setDateOfBirth(dob);
					
					return obj1;
				}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return null;
	}

	@Override
	public boolean updateUser(User userObj) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update UserTable set first_name=?,last_name=?,gender=?,dateOfbirth=? where emailId=?");
			ps.setString(5,userObj.getEmail());
			ps.setString(1,userObj.getFirstName());
			ps.setString(2,userObj.getLastName());
			ps.setString(3,userObj.getGender());
			
			/*Converting java.util.Date into java.sql.Date*/
			Date dateOfBirth=userObj.getDateOfBirth();
			long l=dateOfBirth.getTime();
			java.sql.Date dob=new java.sql.Date(l);
			ps.setDate(4, dob);
			
			int i=ps.executeUpdate();
			if(i!=0){
				return true;
			}
			else {
				return false;
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean changePassword(String email, String newPassword,	String confirmPassword) {
		try {
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("Update LoginTab set password=? where loginId=?");
			ps.setString(1,newPassword);
			ps.setString(2,email);
			
			int i=ps.executeUpdate();
			if(i!=0)
				return true;
			 
	
			}
			catch(Exception e){
				e.printStackTrace();
			}
		return false;
	}

}
