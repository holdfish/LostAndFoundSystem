package com.pojo.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.comom.SelectThanksInfoDesc;
import com.pojo.model.ThanksInfo;
import com.pojo.service.ThanksInfoService;

@SuppressWarnings("serial")
public class Thanks extends ActionSupport {
	
	private String uid;
	private String username;
	private String pubname;
	private String content;
	private SelectThanksInfoDesc stinfod;
	private ThanksInfoService tinfoService;
	
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
	public SelectThanksInfoDesc getStinfod() {
		return stinfod;
	}
	public void setStinfod(SelectThanksInfoDesc stinfod) {
		this.stinfod = stinfod;
	}
	public ThanksInfoService getTinfoService() {
		return tinfoService;
	}
	public void setTinfoService(ThanksInfoService tinfoService) {
		this.tinfoService = tinfoService;
	}
	
	public String getusername(){
		System.out.println("发表用户："+username);
		System.out.println("发表用户ID："+uid);
		ActionContext.getContext().put("name", username);
		return SUCCESS;
	}
	
	public String publishThanks(){
		ThanksInfo tinfo = new ThanksInfo();
		tinfo.setPubname(pubname);
		tinfo.setContent(content);
		tinfo.setPublishtime(new Date());
		tinfoService.saveThanksInfo(tinfo);
		return SUCCESS;
	}
	
	public String FindAllInfo(){
		this.stinfod = tinfoService.QueryByDesc();
		return SUCCESS;
	}
	
}
