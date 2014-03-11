package com.pojo.impl;

import java.util.List;

import com.pojo.dao.ItemTypeDao;
import com.pojo.model.Itemtype;
import com.pojo.service.ItemTypeService;

public class ItemTypeServiceImpl implements ItemTypeService {
	
	private ItemTypeDao itDao;
	
	public ItemTypeDao getItDao() {
		return itDao;
	}

	public void setItDao(ItemTypeDao itDao) {
		this.itDao = itDao;
	}

	public void addItemType(Itemtype itype) {
		// TODO Auto-generated method stub
		itDao.addItemType(itype);
	}

	public List<Itemtype> findallItype() {
		// TODO Auto-generated method stub
		return itDao.findallItype();
	}

}
