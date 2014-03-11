package com.pojo.impl;

import java.util.List;

import com.pojo.model.User;
import com.pojo.service.UserService;
import com.pojo.comom.Pagination;
import com.pojo.dao.UserDao;

public class UserServiceImpl implements UserService {

	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/*
	 * 添加用户
	 */
	public void add(User user) {
		// TODO Auto-generated method stub
		userDao.add(user);
	}
	
	/*
	 * 查找是否有相同的用户
	 */
	public User isOk(String StuId, String loginId) {
		// TODO Auto-generated method stub
		return userDao.isOK(StuId, loginId);
	}
	public Pagination queryForPage(int pageSize, int page) {
        String hql = "select count(*) from User";
        int count = userDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<User> list = userDao.queryForPage("from User", offset, length); // 该分页的记录
        // 把分页信息保存到Bean中
        Pagination pagination = new Pagination();
        pagination.setPageSize(pageSize);
        pagination.setCurrentPage(currentPage);
        pagination.setAllRow(count);
        pagination.setTotalPage(totalPage);
        pagination.setList(list);
        pagination.init();
        return pagination;
    }
	
	/*
	 * 用户登陆
	 */
	public User userlogin(String loginId, String password) {
		// TODO Auto-generated method stub
		return userDao.userlogin(loginId, password);
	}

	public User getById(Integer id) {
		// TODO Auto-generated method stub
		return userDao.getById(id);
	}

	public void saveOrupdate(User user) {
		// TODO Auto-generated method stub
		userDao.saveOrupdate(user);
	}

	public void deleteById(User user) {
		// TODO Auto-generated method stub
		userDao.deleteById(user);
	}

	public int EditisOK(String StuId, String loginId, Integer id) {
		// TODO Auto-generated method stub
		return userDao.EditisOK(StuId, loginId, id);
	}
}
