package com.pojo.dao;

import com.pojo.model.Vote;;

public interface VoteDao {
	/*
	 *新增投票用户
	 */
	public void add (Vote vote);
	/*
	 *常看是否有相同ip
	 */
	public Vote FindIp (String ip);
}
