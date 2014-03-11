package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.ItemTypeDao;
import com.pojo.model.Itemtype;

public class ItemTypeDaoImpl extends HibernateDaoSupport implements ItemTypeDao {

	public void addItemType(Itemtype itype) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(itype);
	}

	@SuppressWarnings("unchecked")
	public List<Itemtype> findallItype() {
		// TODO Auto-generated method stub
		List<Itemtype> list = (List<Itemtype>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				String hql = "from Itemtype";
				Query query = session.createQuery(hql);
				return query.list();
			}			
		});
		return list;
	}

}
