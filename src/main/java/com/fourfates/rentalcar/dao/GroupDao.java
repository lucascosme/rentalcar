package com.fourfates.rentalcar.dao;

import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.Group;

@Repository
public class GroupDao extends HibernateGenericDao<Group> {
	
	public GroupDao() {
		super(Group.class);
	}
}
