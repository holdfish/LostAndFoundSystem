package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.LostInfoDao;
import com.pojo.model.LostInfo;

public class LostInfoDaoImpl extends HibernateDaoSupport implements LostInfoDao {

	public void addLostInfo(LostInfo Linfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(Linfo);
	}

	public LostInfo getById(Integer id) {
		// TODO Auto-generated method stub
		return (LostInfo) getHibernateTemplate().get(LostInfo.class, id);
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

	@SuppressWarnings("unchecked")
	public List<LostInfo> queryForPage(final String hql, final int offset, final int length) {
		// TODO Auto-generated method stub
		List<LostInfo> list = (List<LostInfo>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException{
			   Query query = session.createQuery(hql);
	           query.setFirstResult(offset);
	           query.setMaxResults(length);
	        return query.list();
				}
			});
		return list;
	}
}
