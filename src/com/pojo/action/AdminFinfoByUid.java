package com.pojo.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.User;
import com.pojo.service.UserService;

@SuppressWarnings("serial")
public class AdminFinfoByUid extends ActionSupport {
	
	private Integer uid;
	
	private UserService userService;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String execute(){
		System.out.println(uid);
		User user = new User();
		user = userService.getById(uid);
		System.out.println(user.getTrueName());
		ActionContext.getContext().put("Releaseuser", user.getTrueName());
		return SUCCESS;
	}
}
