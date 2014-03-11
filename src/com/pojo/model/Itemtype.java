package com.pojo.model;

public class Itemtype {
	
	private Integer id;
	
	private String type_name;

	public Itemtype(String typeName) {
		super();
		this.type_name = typeName;
	}

	public Itemtype() {
		super();
		// TODO Auto-generated constructor stub
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
		this.type_name = typeName;
	}
	
}
