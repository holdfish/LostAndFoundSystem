package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.TopByDescDao;
import com.pojo.model.FindInfo;
import com.pojo.model.LeiFengBang;
import com.pojo.model.LostInfo;

public class TopByDescDaoImpl extends HibernateDaoSupport implements
		TopByDescDao {

	@SuppressWarnings("unchecked")
	public List<FindInfo> queryFinfoForTime(final String hql, final int offset, final int length) {
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

	@SuppressWarnings("unchecked")
	public List<LostInfo> queryLinfoForTime(final String hql, final int offset, final int length) {
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

	@SuppressWarnings("unchecked")
	public List<LeiFengBang> queryKindlenessForCount(final String hql, final int offset,
			final int length) {
		// TODO Auto-generated method stub
		List<LeiFengBang> list = (List<LeiFengBang>)getHibernateTemplate().execute(new HibernateCallback(){
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
