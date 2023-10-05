/*
package com.becoder.dao;

import javax.management.Query;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImp implements UserDao{
	/*
	 * !-- these is used to store the data in data base--!
	 
	@Autowired 
	//for injecting the values we used these
	private HibernateTemplate hibernateTemplate;
	
	
	public int saveUser(User user) {
		int i = (Integer)hibernateTemplate.save(user);
		// TODO Auto-generated method stub
		return i;
	}

	public User loginUser(String email, String passsword) {
		
		// TODO Auto-generated method stub
//		select * from user email=? and password ?; ->user object
		
//		here we created the hql query
		String sql = "from User where email=:em and password=:pwd";
		User us = (User)hibernateTemplate.execute(s->{
			org.hibernate.query.Query q =s.createQuery(sql);
			q.setString("em",email);
			q.setString("pwd",passsword);
			return q.uniqueResult();

		});
		return us;
	}
	}
	*/	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

