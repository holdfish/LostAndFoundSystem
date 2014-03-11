package com.pojo.service;

import com.pojo.comom.SelectThanksInfoDesc;
import com.pojo.model.ThanksInfo;

public interface ThanksInfoService {
	/*
	 * 发表感谢内容
	 */
	public void saveThanksInfo(ThanksInfo Tinfo);
	/*
	 * 查询所有的感谢内容
	 */
	public SelectThanksInfoDesc QueryByDesc();
}
