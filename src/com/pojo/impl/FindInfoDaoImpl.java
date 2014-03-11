package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.FindInfoDao;
import com.pojo.model.FindInfo;

public class FindInfoDaoImpl extends HibernateDaoSupport implements FindInfoDao {

	public void addFindInfo(FindInfo Finfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(Finfo);
	}

	public int getCount(final String hql) {
		// TODO Auto-generated method stub
		Integer list = (Integer)getHibernateTemplate().execute(new HibernateCallback(){
    		public Object doInHibernate(Session session) throws HibernateException, SQLException{
    		   Query q = session.createQuery(hql);
        return Integer.parseInt(q.list().get(0).toString());
    		}
    	});
    	return list;
	}
	/*∑÷“≥≤È—Ø*/
	@SuppressWarnings("unchecked")
	public List<FindInfo> queryForPage(final String hql, final int offset, final int length) {
		// TODO Auto-generated method stub
		List<FindInfo> list = (List<FindInfo>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException{
			   Query query = session.createQuery(hql);
	           query.setFirstResult(offset);
	           query.setMaxResults(length);
	        return query.list();
				}
			});
		return list;
	}
	
	public FindInfo getById(Integer id) {
		// TODO Auto-generated method stub
		return (FindInfo) getHibernateTemplate().get(FindInfo.class, id);
	}

	public void deleteFinfo(FindInfo Finfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(Finfo);
	}
	
}
