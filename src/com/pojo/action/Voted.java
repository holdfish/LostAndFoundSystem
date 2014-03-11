package com.pojo.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.Vote;
import com.pojo.service.VoteService;

@SuppressWarnings("serial")
public class Voted extends ActionSupport {
	
	private String uid;
	private String username;
	private String contact_name;
	private VoteService voteService;
	
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
	
	public String getContact_name() {
		return contact_name;
	}
	
	public void setContact_name(String contactName) {
		contact_name = contactName;
	}

	public VoteService getVoteService() {
		return voteService;
	}

	public void setVoteService(VoteService voteService) {
		this.voteService = voteService;
	}
	
	public String HbVoted(){
		HttpServletRequest request = ServletActionContext.getRequest();
		System.out.println("投票的用户的id："+uid);
		System.out.println(username);
		System.out.println(contact_name);
		System.out.println(request.getRemoteAddr());
		Vote vote = new Vote();
		ActionContext.getContext().put("contact_name", contact_name);
		ActionContext.getContext().put("uid", uid);
		Vote votebyip = new Vote(); 
		votebyip = voteService.FindIp(request.getRemoteAddr());
		if(votebyip==null){
			vote.setUsername(username);
			vote.setIp(request.getRemoteAddr());
			voteService.add(vote);
			return SUCCESS;
		}
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		return INPUT;
	}
}
