package com.pojo.model;

public class Vote {
	
	private Integer id;
	private String username;
	private String ip;

	public Vote(String username, String ip) {
		super();
		this.username = username;
		this.ip = ip;
	}
	
	public Vote() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
}
