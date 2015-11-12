package com.fourfates.rentalcar.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.User;
import com.fourfates.rentalcar.model.UserRoles;

@Repository
public class UserRolesDao extends HibernateGenericDao<UserRoles> {

	public UserRolesDao() {
		super(UserRoles.class);
	}

	public Collection<UserRoles> findByUser(User user) {
		List<Criterion> criterions = new ArrayList<Criterion>();
		criterions.add(Restrictions.eq("user.id", user.getId()));
		return findByCriterion(criterions);
	}
}