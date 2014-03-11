package com.pojo.service;

import com.pojo.model.Vote;

public interface VoteService {
	/*
	 *新增投票用户
	 */
	public void add (Vote vote);
	/*
	 *常看是否有相同ip
	 */
	public Vote FindIp (String ip);
}
