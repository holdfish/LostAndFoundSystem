package com.pojo.service;

import com.pojo.model.Admin;

public interface AdminService {	
	/*
	 *添加管理员 
	 */
	public void add (Admin admin);
	/*
	 *管理员 登陆
	 */
	public Admin adminlogin (String login_name , String password);
	
}
