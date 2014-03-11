package com.pojo.action;

import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.User;
import com.pojo.service.UserService;

@SuppressWarnings("serial")
public class EditUser extends ActionSupport{
	
	private Integer id;
	private String stuId;
	private String trueName;
	private String loginId;
	private String password;
	private String sex;
	private String YYYY;
	private String MM;
	private String idcard;
	private User user;
	private UserService userService;
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
	
	public String edit(){
		System.out.println(id);
		this.user = userService.getById(id);
		return "edit";
	}
	
	public String update(){
		System.out.println(id);
		user = userService.getById(id);
		user.setId(id);
		System.out.println(stuId);
		System.out.println(trueName);
		System.out.println(loginId);
		System.out.println(password);
		System.out.println(sex);
		System.out.println(YYYY+"年"+MM+"月");
		System.out.println(idcard);
		user.setStuId(stuId);
		user.setTrueName(trueName);
		user.setLoginId(loginId);
		user.setPassword(password);
		user.setSex(sex);
		user.setBirthday(YYYY+"年"+MM+"月");
		user.setIdcard(idcard);
		int reuser = userService.EditisOK(stuId, loginId, id);
		System.out.println(reuser);
		if(reuser!=0){
			addActionMessage("已存在该学号或登陆账号!");
			return "Error";
		}
		userService.saveOrupdate(user);
		return SUCCESS;
	}
}
