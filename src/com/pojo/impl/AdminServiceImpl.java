package com.pojo.impl;

import com.pojo.dao.AdminDao;
import com.pojo.model.Admin;
import com.pojo.service.AdminService;

public class AdminServiceImpl implements AdminService {
	
	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}


	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public void add(Admin admin) {
		// TODO Auto-generated method stub
		adminDao.add(admin);
	}


	public Admin adminlogin(String loginName, String password) {
		// TODO Auto-generated method stub
		return adminDao.adminlogin(loginName, password);
	}

}
