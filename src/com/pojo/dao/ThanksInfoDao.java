package com.pojo.dao;

import java.util.List;

import com.pojo.model.ThanksInfo;

public interface ThanksInfoDao {
	/*
	 * 发表感谢内容
	 */
	public void saveThanksInfo(ThanksInfo Tinfo);
	/*
	 * 查询所有的感谢内容
	 */
	public List<ThanksInfo> QueryAllInfo(String hql);
}
