package com.mobileworld.daos;

import com.mobileworld.models.User;

public interface UserDao {
	
	public boolean registerUser(User userObj);
	public User getUser(String email);
	public boolean updateUser(User userObj);
	public boolean changePassword(String email,String newPassword, String confirmPassword);

}
