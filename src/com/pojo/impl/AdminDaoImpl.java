package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.AdminDao;
import com.pojo.model.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	public void add(Admin admin) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(admin);
	}

	@SuppressWarnings("unchecked")
	public Admin adminlogin(final String loginName, final String password) {
		// TODO Auto-generated method stub
		Admin admin = null;
		//使用HibernateCallback 回调接口，完成灵活的操作方式
		List<Admin> list = (List<Admin>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				Query query = session.createQuery("from Admin where login_name='"+loginName+"' and password='"+password+"'");
				return query.list();
			}			
		});
		if(list!=null&&list.size()>0){
			admin = list.get(0);			
		}
		System.out.println(list.size());
		return admin;
	}

}
