package com.pojo.impl;

import java.util.List;

import com.pojo.comom.SelectFinfoTopDesc;
import com.pojo.comom.SelectLfbangTopDesc;
import com.pojo.comom.SelectLinfoTopDesc;
import com.pojo.dao.TopByDescDao;
import com.pojo.model.FindInfo;
import com.pojo.model.LeiFengBang;
import com.pojo.model.LostInfo;
import com.pojo.service.TopByDescService;

public class TopByDescServiceImpl implements TopByDescService {
	
	private TopByDescDao topbydescDao;

	public TopByDescDao getTopbydescDao() {
		return topbydescDao;
	}

	public void setTopbydescDao(TopByDescDao topbydescDao) {
		this.topbydescDao = topbydescDao;
	}

	public SelectFinfoTopDesc queryFinfoForTime() {
		// TODO Auto-generated method stub
		List<FindInfo> list = topbydescDao.queryFinfoForTime("from FindInfo order by releasetime desc", 0, 10);
		SelectFinfoTopDesc select = new SelectFinfoTopDesc();
		select.setList(list);
		return select;
	}

	public SelectLinfoTopDesc queryLinfoForTime() {
		// TODO Auto-generated method stub
		List<LostInfo> list = topbydescDao.queryLinfoForTime("from LostInfo order by releasetime desc", 0, 10);
		SelectLinfoTopDesc select = new SelectLinfoTopDesc();
		select.setList(list);
		return select;
	}

	public SelectLfbangTopDesc queryLinfoForCount() {
		// TODO Auto-generated method stub
		List<LeiFengBang> list = topbydescDao.queryKindlenessForCount("from LeiFengBang order by votednum desc", 0, 10);
		SelectLfbangTopDesc select = new SelectLfbangTopDesc();
		select.setList(list);
		return select;
	}

}
