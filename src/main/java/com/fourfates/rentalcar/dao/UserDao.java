package com.fourfates.rentalcar.dao;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.User;

@Repository
public class UserDao extends HibernateGenericDao<User> {
	
	public UserDao(){
		super(User.class);
	}

	public User findByUserName(String userName) {
		return findOneByCriterion(Restrictions.eq("userName", userName));
	}

}
