package com.pojo.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.service.UserService;
import com.pojo.model.User;

public class register extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
	private Integer id;
	private String stuId;
	private String trueName;
	private String loginId;
	private String password;
	private String sex;
	private String YYYY;
	private String MM;
	private String idcard;
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStuId() {
		return stuId;
	}
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	public String getTrueName() {
		return trueName;
	}
	public void setTrueName(String trueName) {
		this.trueName = trueName;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getYYYY() {
		return YYYY;
	}
	public void setYYYY(String yYYY) {
		this.YYYY = yYYY;
	}
	public String getMM() {
		return MM;
	}
	public void setMM(String mM) {
		this.MM = mM;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	/*
	 * 用户注册,成功后返回列表
	 */
	public String execute(){
		User user = new User();
		user.setId(id);
		user.setStuId(stuId);
		user.setTrueName(trueName);
		user.setLoginId(loginId);
		user.setPassword(password);
		user.setSex(sex);
		user.setIdcard(idcard);
		user.setBirthday(YYYY+"年"+MM+"月");
		User users = userService.isOk(stuId, loginId);
		System.out.println(users);
		if(users!=null)  //存在该用户
		{
			addActionMessage("对不起,学号或登陆账号已被注册!");
			return "Error";
		}
		userService.add(user);
		return SUCCESS;
	}
}
