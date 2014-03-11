package com.pojo.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.User;
import com.pojo.service.UserService;

public class Userlogin extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private String loginId;
	private String password;
	private String username;
	private String uid;
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String userlogin(){
		user = userService.userlogin(loginId, password);
		if(user==null){
			ActionContext.getContext().put("loginerror", "用户名或密码错误！");
			return "Error";
		}
		System.out.println(user.getTrueName());
		System.out.println("Integer"+user.getId());
		String userid = Integer.toString(user.getId());
		System.out.println("String"+userid);
		ActionContext.getContext().put("username", user.getTrueName());
		ActionContext.getContext().put("uid",userid);
		return SUCCESS;
	}
	
	public String loginOrnot(){
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("Userlogin："+username);
		System.out.println("Userlogin："+uid);
		return SUCCESS;
	}
}
