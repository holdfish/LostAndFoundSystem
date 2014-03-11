package com.pojo.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.pojo.model.Itemtype;
import com.pojo.service.ItemTypeService;

@SuppressWarnings("serial")
public class ItemType extends ActionSupport {
	
	private Integer id;
	
	private String type_name;
	
	private String username;
	
	private String uid;
	
	private Itemtype itype;
	
	private List<Itemtype> list = new ArrayList<Itemtype>();
	
	private ItemTypeService itService;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public List<Itemtype> getList() {
		return list;
	}

	public void setList(List<Itemtype> list) {
		this.list = list;
	}

	public Itemtype getItype() {
		return itype;
	}

	public void setItype(Itemtype itype) {
		this.itype = itype;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String typeName) {
		type_name = typeName;
	}

	public ItemTypeService getItService() {
		return itService;
	}

	public void setItService(ItemTypeService itService) {
		this.itService = itService;
	}
	
	public String insert(){
		Itemtype itype = new Itemtype();
		itype.setId(id);
		itype.setType_name(type_name);
		itService.addItemType(itype);
		return SUCCESS;
	}
	
	public String findall() throws IOException{
		HttpServletRequest request = ServletActionContext.getRequest();
		List<Itemtype> itype = itService.findallItype();
		request.setAttribute("allItype",itype);
		ActionContext.getContext().put("username", username);
		ActionContext.getContext().put("uid", uid);
		System.out.println(itype.size());
		System.out.println("ItemType£º"+username);
		System.out.println("ItemType£º"+uid);
		return SUCCESS;	
	}
}
