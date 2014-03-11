package com.pojo.service;

import com.pojo.comom.Pagination;
import com.pojo.model.LostInfo;

public interface LostInfoService {
	/*
	 * 添加招领信息
	 */
	public void addLostInfo(LostInfo Linfo);
	/*
	 * 分页查询所有寻物信息
	 */
	public Pagination queryForPage(int pageSize, int currentPage);
	/*
	 * 根据物品类型分页查询寻物信息
	 */
	public Pagination queryByTypeForPage(String type_name,int pageSize, int currentPage);
	/*
     * 根据主键id得到LostInfo实例
     */
    public LostInfo getById(Integer id);
}
