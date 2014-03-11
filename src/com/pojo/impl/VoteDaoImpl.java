package com.pojo.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pojo.dao.VoteDao;
import com.pojo.model.Vote;

public class VoteDaoImpl extends HibernateDaoSupport implements VoteDao {

	public void add(Vote vote) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(vote);
	}

	@SuppressWarnings("unchecked")
	public Vote FindIp(final String ip) {
		// TODO Auto-generated method stub
		Vote vote = null;
		//使用HibernateCallback 回调接口，完成灵活的操作方式
		List<Vote> list = (List<Vote>)getHibernateTemplate().execute(new HibernateCallback(){
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				// TODO Auto-generated method stub
				Query query = session.createQuery("from Vote where ip='"+ip+"'");
				return query.list();
			}			
		});
		if(list!=null&&list.size()>0){
			vote = list.get(0);			
		}
		return vote;
	}

}
