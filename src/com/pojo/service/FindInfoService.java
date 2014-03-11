package com.pojo.service;

import com.pojo.comom.Pagination;
import com.pojo.model.FindInfo;

public interface FindInfoService {
	/*
	 * 添加招领信息
	 */
	public void addFindInfo(FindInfo Finfo);
	/*
	 * 分页查询所有招领信息
	 */
	public Pagination queryForPage(int pageSize, int page);
	/*
	 * 根据物品类型分页查询招领信息
	 */
	public Pagination queryByTypeForPage(String type_name,int pageSize, int page);
	/*
	 * 根据物品名称分页模糊查询招领信息
	 */
	public Pagination queryByNameForPage(String find_name,int pageSize, int page);
	/*
	 * 根据拾到地点分页模糊查询招领信息
	 */
	public Pagination queryByPlaceForPage(String find_place,int pageSize, int page);
	/*
	 * 根据物品类型和名称分页查询招领信息
	 */
	public Pagination queryByTypeAndNameForPage(String type_name,String find_name,int pageSize, int page);
	/*
	 * 根据物品类型和拾到地点分页查询招领信息
	 */
	public Pagination queryByTypeAndPlaceForPage(String type_name,String find_place,int pageSize, int page);
	/*
	 * 根据物品名称和拾到地点分页查询招领信息
	 */
	public Pagination queryByNameAndPlaceForPage(String find_name,String find_place,int pageSize, int page);
	/*
	 * 根据物品类型和物品名称以及拾到地点分页查询招领信息
	 */
	public Pagination queryByTypeNamePlaceForPage(String type_name,String find_name,String find_place,int pageSize, int page);
	/*
     * 根据主键id得到FindInfo实例
     */
    public FindInfo getById(Integer id);
    /*
     * 根据主键id删除FindInfo实例
     */
    public void deleteFinfo(FindInfo Finfo);
}
