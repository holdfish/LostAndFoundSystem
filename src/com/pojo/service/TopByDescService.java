package com.pojo.service;

import com.pojo.comom.SelectFinfoTopDesc;
import com.pojo.comom.SelectLfbangTopDesc;
import com.pojo.comom.SelectLinfoTopDesc;

public interface TopByDescService {
	
	/*
	 * 根据发布时间查询前10条招领信息
	 */
	public SelectFinfoTopDesc queryFinfoForTime();
	
	public SelectLinfoTopDesc queryLinfoForTime();
	
	public SelectLfbangTopDesc queryLinfoForCount();
}
