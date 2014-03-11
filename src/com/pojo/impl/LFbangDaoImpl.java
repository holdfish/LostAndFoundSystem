package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.LFbangDao;
import com.pojo.model.LeiFengBang;

public class LFbangDaoImpl extends HibernateDaoSupport implements LFbangDao {

	public void add(LeiFengBang lfbang) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(lfbang);
	}

	@SuppressWarnings("unchecked")
	public LeiFengBang isExist(final String kindleness) {
		// TODO Auto-generated method stub
		LeiFengBang lfbang = null;
		//使用HibernateCallback 回调接口，完成灵活的操作方式
		List<LeiFengBang> list = (List<LeiFengBang>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				Query query = session.createQuery("from LeiFengBang where kindleness = '"+kindleness+"'");
				return query.list();
			}			
		});
		if(list!=null&&list.size()>0){
			lfbang = list.get(0);			
		}
		return lfbang;
	}

	public void update(LeiFengBang lfbang) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(lfbang);
	}

}
