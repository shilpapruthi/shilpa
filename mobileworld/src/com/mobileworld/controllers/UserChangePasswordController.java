package com.mobileworld.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mobileworld.daos.UserDao;
import com.mobileworld.daosimpl.UserDaoImpl;
import com.mobileworld.models.User;

@WebServlet("/UserChangePassword")
public class UserChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s2=request.getParameter("npwd");
		String s3=request.getParameter("cpwd");
		
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user1");
		
		if(s2.equals(s3)){
			
			UserDao changePasswordObj=new UserDaoImpl();
			boolean obj=changePasswordObj.changePassword(user.getEmail(),s2,s3);
			if(obj==true){
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				request.setAttribute("msg", "Password Changed Sucessfully");
				rd.forward(request, response);
			}
			else{
				RequestDispatcher rd=request.getRequestDispatcher("ChangePassword.jsp");
				request.setAttribute("msg", "Problem in Changing Password");
				rd.forward(request, response);
			}
		}
	}

}
