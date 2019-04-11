package com.mobileworld.daos;

import com.mobileworld.models.Login;

public interface LoginDao {
	public Login validate(String emailId,String pass);

}
