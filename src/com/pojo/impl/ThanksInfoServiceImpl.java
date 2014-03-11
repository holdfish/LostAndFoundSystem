package com.pojo.impl;

import java.util.List;

import com.pojo.comom.SelectThanksInfoDesc;
import com.pojo.dao.ThanksInfoDao;
import com.pojo.model.ThanksInfo;
import com.pojo.service.ThanksInfoService;

public class ThanksInfoServiceImpl implements ThanksInfoService {
	
	private ThanksInfoDao tinfoDao;

	public ThanksInfoDao getTinfoDao() {
		return tinfoDao;
	}

	public void setTinfoDao(ThanksInfoDao tinfoDao) {
		this.tinfoDao = tinfoDao;
	}

	public void saveThanksInfo(ThanksInfo Tinfo) {
		// TODO Auto-generated method stub
		tinfoDao.saveThanksInfo(Tinfo);
	}

	public SelectThanksInfoDesc QueryByDesc() {
		// TODO Auto-generated method stub
		List<ThanksInfo> list = tinfoDao.QueryAllInfo("from ThanksInfo order by publishtime desc");
		SelectThanksInfoDesc select = new SelectThanksInfoDesc();
		select.setList(list);
		return select;
	}

}
