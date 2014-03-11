package com.pojo.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.comom.SelectFinfoTopDesc;
import com.pojo.comom.SelectLfbangTopDesc;
import com.pojo.comom.SelectLinfoTopDesc;
import com.pojo.service.TopByDescService;

@SuppressWarnings("serial")
public class TopByDesc extends ActionSupport {
	private String uid;
	private String username;
	private SelectFinfoTopDesc sftd;
	private SelectLinfoTopDesc sltd;
	private SelectLfbangTopDesc slfbangtd;
	private TopByDescService topbydescService;
	
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

	public SelectFinfoTopDesc getSftd() {
		return sftd;
	}

	public void setSftd(SelectFinfoTopDesc sftd) {
		this.sftd = sftd;
	}

	public SelectLinfoTopDesc getSltd() {
		return sltd;
	}

	public void setSltd(SelectLinfoTopDesc sltd) {
		this.sltd = sltd;
	}
	
	public SelectLfbangTopDesc getSlfbangtd() {
		return slfbangtd;
	}

	public void setSlfbangtd(SelectLfbangTopDesc slfbangtd) {
		this.slfbangtd = slfbangtd;
	}

	public TopByDescService getTopbydescService() {
		return topbydescService;
	}

	public void setTopbydescService(TopByDescService topbydescService) {
		this.topbydescService = topbydescService;
	}

	public String execute(){
		this.sftd = topbydescService.queryFinfoForTime();
		this.sltd = topbydescService.queryLinfoForTime();
		this.slfbangtd = topbydescService.queryLinfoForCount();
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println("TopByDesc£º"+username);
		System.out.println("TopByDesc£º"+uid);
		return SUCCESS;
	}
}
