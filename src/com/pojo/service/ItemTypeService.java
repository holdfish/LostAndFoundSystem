package com.pojo.service;

import java.util.List;

import com.pojo.model.Itemtype;

public interface ItemTypeService {
	
	/*
	 * 添加物品类型
	 */
	public void addItemType (Itemtype itype);
	
	/*
	 * 所有物品类型
	 */
	public List<Itemtype> findallItype();
}
