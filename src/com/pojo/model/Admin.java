package com.pojo.model;

public class Admin {
	
	private Integer id;
	private String login_name;
	private String password;
	private String power;
	private String power_num;
	
	public Admin(String loginName, String password, String power,
			String powerNum) {
		super();
		login_name = loginName;
		this.password = password;
		this.power = power;
		power_num = powerNum;
	}
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String loginName) {
		login_name = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public String getPower_num() {
		return power_num;
	}
	public void setPower_num(String powerNum) {
		power_num = powerNum;
	}
	
}
