package com.pojo.service;

import com.pojo.comom.Pagination;
import com.pojo.model.User;

public interface UserService {
	/*
	 * 添加用户
	 */
	public void add(User user);
	
	/*
	 * 查询是否有相同用户
	 */
	public User isOk(String StuId , String loginId);
	
	/*
	 * 分页查询
	 */
	public Pagination queryForPage(int pageSize, int currentPage);
	
	/*
     * 根据主键id得到User实例
     */
    public User getById(Integer id);
    
    /*
     * 根据id删除User实例
     */
    public void deleteById(User user);
    
    /*
     * 根据id更新数据
     */
    public void saveOrupdate(User user);
    /*
     * 修改信息是否存在相同的loginId或学号
     */
    public int EditisOK(String StuId , String loginId , Integer id);
	/*
	 * 用户登陆
	 */
	public User userlogin(String loginId , String password);
}
