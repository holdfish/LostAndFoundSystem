package com.pojo.model;

public class LeiFengBang {
	
	private Integer id;
	private Integer votednum;
	private String kindleness;
	
	public LeiFengBang(Integer votednum, String kindleness) {
		super();
		this.votednum = votednum;
		this.kindleness = kindleness;
	}
	
	public LeiFengBang() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getVotednum() {
		return votednum;
	}

	public void setVotednum(Integer votednum) {
		this.votednum = votednum;
	}

	public String getKindleness() {
		return kindleness;
	}

	public void setKindleness(String kindleness) {
		this.kindleness = kindleness;
	}
	
}
