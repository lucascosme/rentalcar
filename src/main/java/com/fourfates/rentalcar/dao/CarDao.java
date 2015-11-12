package com.fourfates.rentalcar.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.controller.model.CarStatus;
import com.fourfates.rentalcar.model.Car;

@Repository
public class CarDao extends HibernateGenericDao<Car> {

	public CarDao() {
		super(Car.class);
	}
	
	public List<Car> findByStatus(CarStatus... status) {
		List<Criterion> criterion = new ArrayList<>();
		criterion.add(
				Restrictions.in("Status", status)
		);
		return findByCriterion(criterion);
	}
	
	public void update(Long idCar, CarStatus carStatus) {
		Car car = findById(idCar);
		car.setStatus(carStatus);
		update(car);
	}
}
