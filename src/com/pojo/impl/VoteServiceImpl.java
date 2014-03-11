package com.pojo.impl;

import com.pojo.dao.VoteDao;
import com.pojo.model.Vote;
import com.pojo.service.VoteService;

public class VoteServiceImpl implements VoteService {
	
	private VoteDao voteDao;

	public VoteDao getVoteDao() {
		return voteDao;
	}

	public void setVoteDao(VoteDao voteDao) {
		this.voteDao = voteDao;
	}

	public void add(Vote vote) {
		// TODO Auto-generated method stub
		voteDao.add(vote);
	}

	public Vote FindIp(String ip) {
		// TODO Auto-generated method stub
		return voteDao.FindIp(ip);
	}

}
