package com.pojo.dao;

import com.pojo.model.Admin;

public interface AdminDao {
	/*
	 *添加管理员add by GenXL
	 */
	public void add (Admin admin);
	/*
	 *管理员
	 */
	public Admin adminlogin (String login_name , String password);
}
