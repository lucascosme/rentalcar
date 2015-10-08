package com.fourfates.rentalcar.dao;

import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.Client;

@Repository
public class ClientDao extends HibernateGenericDao<Client> {

	public ClientDao() {
		super(Client.class);
	}
}