package com.pojo.impl;

import java.util.List;

import com.pojo.comom.Pagination;
import com.pojo.dao.FindInfoDao;
import com.pojo.model.FindInfo;
import com.pojo.service.FindInfoService;

public class FindInfoServiceImpl implements FindInfoService {
	
	private FindInfoDao findinfoDao;
	
	public FindInfoDao getFindinfoDao() {
		return findinfoDao;
	}

	public void setFindinfoDao(FindInfoDao findinfoDao) {
		this.findinfoDao = findinfoDao;
	}

	public void addFindInfo(FindInfo Finfo) {
		// TODO Auto-generated method stub
		findinfoDao.addFindInfo(Finfo);
	}

	public FindInfo getById(Integer id) {
		// TODO Auto-generated method stub
		return findinfoDao.getById(id);
	}

	public Pagination queryForPage(int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo", offset, length); // 该分页的记录
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
		String hql = "select count(*) from FindInfo where find_type ='"+typeName+"'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_type ='"+typeName+"'", offset, length); // 该分页的记录
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

	public Pagination queryByNameForPage(String findName, int pageSize,
			int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_name like '%"+findName+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_name like '%"+findName+"%'", offset, length); // 该分页的记录
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

	public Pagination queryByPlaceForPage(String findPlace, int pageSize,
			int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_place like '%"+findPlace+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_place like '%"+findPlace+"%'", offset, length); // 该分页的记录
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

	public Pagination queryByTypeAndNameForPage(String typeName,
			String findName, int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_type = '"+typeName+"' and find_name like '%"+findName+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_type = '"+typeName+"' and find_name like '%"+findName+"%'", offset, length); // 该分页的记录
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
	
	public Pagination queryByTypeAndPlaceForPage(String typeName,
			String findPlace, int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_type = '"+typeName+"' and find_place like '%"+findPlace+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_type = '"+typeName+"' and find_place like '%"+findPlace+"%'", offset, length); // 该分页的记录
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

	public Pagination queryByNameAndPlaceForPage(String findName,
			String findPlace, int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_name like '%"+findName+"%' and find_place like '%"+findPlace+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_name like '%"+findName+"%' and find_place like '%"+findPlace+"%'", offset, length); // 该分页的记录
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
	
	public Pagination queryByTypeNamePlaceForPage(String typeName,
			String findName, String findPlace, int pageSize, int page) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from FindInfo where find_type = '"+typeName+"' and find_name like '%"+findName+"%' and find_place like '%"+findPlace+"%'";
        int count = findinfoDao.getCount(hql); // 总记录数
        int totalPage = Pagination.countTotalPage(pageSize, count); // 总页数
        int offset = Pagination.countOffset(pageSize, page); // 当前页开始记录
        int length = pageSize; // 每页记录数
        int currentPage = Pagination.countCurrentPage(page);
        List<FindInfo> list = findinfoDao.queryForPage("from FindInfo where find_type = '"+typeName+"' and find_name like '%"+findName+"%' and find_place like '%"+findPlace+"%'", offset, length); // 该分页的记录
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
	
	public void deleteFinfo(FindInfo Finfo) {
		// TODO Auto-generated method stub
		findinfoDao.deleteFinfo(Finfo);
	}

}
