package com.pojo.dao;

import java.util.List;

import com.pojo.model.FindInfo;

public interface FindInfoDao {
	/*
	 * 添加招领信息
	 */
	public void addFindInfo(FindInfo Finfo);
	/*
	 * 总记录条数
	 */
    public int getCount(String hql);
	/*
	 * 分页查询所有招领信息
	 */
	public List<FindInfo> queryForPage(String hql,int offset,int length);
	/*
     * 根据主键id得到FindInfo实例
     */
    public FindInfo getById(Integer id);
    /*
    * 根据主键id删除 FindInfo实例
    */
   public void deleteFinfo(FindInfo Finfo);
}
