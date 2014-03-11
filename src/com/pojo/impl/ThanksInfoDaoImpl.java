package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.ThanksInfoDao;
import com.pojo.model.ThanksInfo;

public class ThanksInfoDaoImpl extends HibernateDaoSupport implements
		ThanksInfoDao {

	public void saveThanksInfo(ThanksInfo Tinfo) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(Tinfo);
	}

	@SuppressWarnings("unchecked")
	public List<ThanksInfo> QueryAllInfo(final String hql) {
		// TODO Auto-generated method stub
		List<ThanksInfo> list = (List<ThanksInfo>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session) throws HibernateException, SQLException{
			   Query query = session.createQuery(hql);
			   return query.list();
				}
			});
		return list;
	}

}
