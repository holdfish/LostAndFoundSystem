package com.pojo.dao;

import java.util.List;

import com.pojo.model.User;

public interface UserDao {

	/*
	 *添加用户 
	 */
	public void add (User user);
	/*
	 * 查找是否有相同用户
	 */
	public User isOK(String StuId , String loginId);
	/*
	 * 总记录条数
	 */
    public int getCount(String hql);
	/*
	 * 分页查询
	 */
    public List<User> queryForPage(String hql,int offset,int length);
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