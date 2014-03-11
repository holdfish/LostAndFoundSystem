package com.pojo.model;

public class User {
	
	private Integer id;
	private String stuId;
	private String trueName;
	private String loginId;
	private String password;
	private String sex;
	private String birthday;
	private String idcard;
	
	public User(String stuId, String trueName, String loginId, String password,
			String sex, String birthday, String idcard) {
		super();
		this.stuId = stuId;
		this.trueName = trueName;
		this.loginId = loginId;
		this.password = password;
		this.sex = sex;
		this.birthday = birthday;
		this.idcard = idcard;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
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

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	
}
