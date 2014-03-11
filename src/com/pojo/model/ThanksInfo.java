package com.pojo.model;

import java.util.Date;

public class ThanksInfo {
	
	private Integer id;
	private String pubname;
	private String content;
	private Date publishtime;
	
	public ThanksInfo(String pubname, String content, Date publishtime) {
		super();
		this.pubname = pubname;
		this.content = content;
		this.publishtime = publishtime;
	}
	
	public ThanksInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getPubname() {
		return pubname;
	}
	
	public void setPubname(String pubname) {
		this.pubname = pubname;
	}

	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getPublishtime() {
		return publishtime;
	}
	
	public void setPublishtime(Date publishtime) {
		this.publishtime = publishtime;
	}
	
}
