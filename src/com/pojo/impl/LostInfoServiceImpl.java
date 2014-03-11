package com.pojo.impl;

import java.util.List;

import com.pojo.comom.Pagination;
import com.pojo.dao.LostInfoDao;
import com.pojo.model.LostInfo;
import com.pojo.service.LostInfoService;

public class LostInfoServiceImpl implements LostInfoService {
	
	private LostInfoDao lostinfoDao;

	public LostInfoDao getLostinfoDao() {
		return lostinfoDao;
	}

	public void setLostinfoDao(LostInfoDao lostinfoDao) {
		this.lostinfoDao = lostinfoDao;
	}

	public void addLostInfo(LostInfo Linfo) {
		// TODO Auto-generated method stub
		lostinfoDao.addLostInfo(Linfo);
	}

	public LostInfo getById(Integer id) {
		// TODO Auto-generated method stub
		return lostinfoDao.getById(id);
	}
	
	public Pagination queryForPage(int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from LostInfo";
        int count = lostinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<LostInfo> list = lostinfoDao.queryForPage("from LostInfo", offset, length); // 该分页的记录
        // 把分页信息保存到Bean中
        Pagination pagination = new Pagination();
        pagination.setPageSize(pageSize);
        pagination.setCurrentPage(currentPage);
        pagination.setAllRow(count);
        pagination.setTotalPage(totalPage);
        pagination.setList(list);
        pagination.init();
        return pagination;
	}

	public Pagination queryByTypeForPage(String typeName, int pageSize,
			int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from LostInfo where lost_type = '"+typeName+"'";
        int count = lostinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<LostInfo> list = lostinfoDao.queryForPage("from LostInfo where lost_type = '"+typeName+"'", offset, length); // 该分页的记录
        // 把分页信息保存到Bean中
        Pagination pagination = new Pagination();
        pagination.setPageSize(pageSize);
        pagination.setCurrentPage(currentPage);
        pagination.setAllRow(count);
        pagination.setTotalPage(totalPage);
        pagination.setList(list);
        pagination.init();
        return pagination;
	}

}
