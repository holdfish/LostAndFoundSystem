package com.pojo.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.User;
import com.pojo.service.UserService;

@SuppressWarnings("serial")
public class DeleteUser extends ActionSupport {
	
	private Integer id;
	private User user;
	private UserService userService;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String execute(){
		user = userService.getById(id);
		this.userService.deleteById(user);
		return SUCCESS;
	}
}
