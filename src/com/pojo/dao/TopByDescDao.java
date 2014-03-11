package com.pojo.dao;

import java.util.List;

import com.pojo.model.FindInfo;
import com.pojo.model.LeiFengBang;
import com.pojo.model.LostInfo;

public interface TopByDescDao {
	/*
	 * 按发布时间查询前10条招领信息
	 */
	public List<FindInfo> queryFinfoForTime(String hql,int offset,int length);
	
	public List<LostInfo> queryLinfoForTime(String hql,int offset,int length);
	
	public List<LeiFengBang> queryKindlenessForCount(String hql,int offset,int length);
}
