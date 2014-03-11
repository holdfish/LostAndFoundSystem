package com.pojo.model;

import java.util.Date;

public class FindInfo {	
	
	private Integer id;	
	private Integer userid;
	private String find_name;	
	private String find_type;	
	private String find_place;	
	private String find_time;	
	private String contact_name;	
	private String contact_mobile;
	private String contact_email;
	private String contact_qq;	
	private String find_detail_info;
	private Date releasetime;
	
	public FindInfo(Integer userid, String findName, String findType,
			String findPlace, String findTime, String contactName,
			String contactMobile, String contactEmail, String contactQq,
			String findDetailInfo, Date releasetime) {
		super();
		this.userid = userid;
		this.find_name = findName;
		this.find_type = findType;
		this.find_place = findPlace;
		this.find_time = findTime;
		this.contact_name = contactName;
		this.contact_mobile = contactMobile;
		this.contact_email = contactEmail;
		this.contact_qq = contactQq;
		this.find_detail_info = findDetailInfo;
		this.releasetime = releasetime;
	}

	public FindInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getFind_name() {
		return find_name;
	}

	public void setFind_name(String findName) {
		this.find_name = findName;
	}

	public String getFind_type() {
		return find_type;
	}

	public void setFind_type(String findType) {
		this.find_type = findType;
	}

	public String getFind_place() {
		return find_place;
	}

	public void setFind_place(String findPlace) {
		this.find_place = findPlace;
	}
	
	public String getFind_time() {
		return find_time;
	}

	public void setFind_time(String findTime) {
		find_time = findTime;
	}

	public String getContact_name() {
		return contact_name;
	}

	public void setContact_name(String contactName) {
		this.contact_name = contactName;
	}

	public String getContact_mobile() {
		return contact_mobile;
	}

	public void setContact_mobile(String contactMobile) {
		this.contact_mobile = contactMobile;
	}
	
	public String getContact_email() {
		return contact_email;
	}

	public void setContact_email(String contactEmail) {
		contact_email = contactEmail;
	}

	public String getContact_qq() {
		return contact_qq;
	}

	public void setContact_qq(String contactQq) {
		this.contact_qq = contactQq;
	}

	public String getFind_detail_info() {
		return find_detail_info;
	}

	public void setFind_detail_info(String findDetailInfo) {
		this.find_detail_info = findDetailInfo;
	}

	public Date getReleasetime() {
		return releasetime;
	}

	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}
}
