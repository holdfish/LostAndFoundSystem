package com.pojo.dao;

import java.util.List;

import com.pojo.model.LostInfo;

public interface LostInfoDao {
	/*
	 * 添加寻物信息
	 */
	public void addLostInfo(LostInfo Linfo);
	/*
	 * 总记录条数
	 */
    public int getCount(String hql);
	/*
	 * 分页查询所有寻物信息
	 */
	public List<LostInfo> queryForPage(String hql,int offset,int length);
	/*
     * 根据主键id得到LostInfo实例
     */
    public LostInfo getById(Integer id);
}
