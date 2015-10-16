package com.fourfates.rentalcar.dao;

import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.Car;

@Repository
public class CarDao extends HibernateGenericDao<Car> {

	public CarDao() {
		super(Car.class);
	}
}
