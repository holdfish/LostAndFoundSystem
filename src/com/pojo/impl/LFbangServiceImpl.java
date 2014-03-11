package com.pojo.impl;

import com.pojo.dao.LFbangDao;
import com.pojo.model.LeiFengBang;
import com.pojo.service.LFbangService;

public class LFbangServiceImpl implements LFbangService {
	
	private LFbangDao lfbangDao;
	
	public LFbangDao getLfbangDao() {
		return lfbangDao;
	}

	public void setLfbangDao(LFbangDao lfbangDao) {
		this.lfbangDao = lfbangDao;
	}

	public void add(LeiFengBang lfbang) {
		// TODO Auto-generated method stub
		lfbangDao.add(lfbang);
	}

	public LeiFengBang isExist(String kindleness) {
		// TODO Auto-generated method stub
		return lfbangDao.isExist(kindleness);
	}

	public void update(LeiFengBang lfbang) {
		// TODO Auto-generated method stub
		lfbangDao.update(lfbang);
	}

}
