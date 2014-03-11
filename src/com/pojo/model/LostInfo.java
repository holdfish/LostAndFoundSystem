package com.pojo.model;

import java.util.Date;

public class LostInfo {
	
	private Integer id;	
	private Integer userid;
	private String lost_name;	
	private String lost_type;	
	private String lost_place;	
	private String lost_time;	
	private String contact_name;	
	private String contact_mobile;
	private String contact_email;
	private String contact_qq;	
	private String lost_detail_info;
	private Date releasetime;
	
	public LostInfo(Integer userid, String lostName, String lostType,
			String lostPlace, String lostTime, String contactName,
			String contactMobile, String contactEmail, String contactQq,
			String lostDetailInfo, Date releasetime) {
		super();
		this.userid = userid;
		this.lost_name = lostName;
		this.lost_type = lostType;
		this.lost_place = lostPlace;
		this.lost_time = lostTime;
		this.contact_name = contactName;
		this.contact_mobile = contactMobile;
		this.contact_email = contactEmail;
		this.contact_qq = contactQq;
		this.lost_detail_info = lostDetailInfo;
		this.releasetime = releasetime;
	}
	
	public LostInfo() {
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

	public String getLost_name() {
		return lost_name;
	}
	public void setLost_name(String lostName) {
		lost_name = lostName;
	}
	public String getLost_type() {
		return lost_type;
	}
	public void setLost_type(String lostType) {
		lost_type = lostType;
	}
	public String getLost_place() {
		return lost_place;
	}
	public void setLost_place(String lostPlace) {
		lost_place = lostPlace;
	}
	public String getLost_time() {
		return lost_time;
	}
	public void setLost_time(String lostTime) {
		lost_time = lostTime;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contactName) {
		contact_name = contactName;
	}
	public String getContact_mobile() {
		return contact_mobile;
	}
	public void setContact_mobile(String contactMobile) {
		contact_mobile = contactMobile;
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
		contact_qq = contactQq;
	}
	public String getLost_detail_info() {
		return lost_detail_info;
	}
	public void setLost_detail_info(String lostDetailInfo) {
		lost_detail_info = lostDetailInfo;
	}
	public Date getReleasetime() {
		return releasetime;
	}
	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}
	
}
