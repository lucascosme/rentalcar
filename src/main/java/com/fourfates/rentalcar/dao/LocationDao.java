package com.fourfates.rentalcar.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.controller.model.LocationStatus;
import com.fourfates.rentalcar.model.Location;

@Repository
public class LocationDao extends HibernateGenericDao<Location> {

	public LocationDao() {
		super(Location.class);
	}
	
	public void updateLocationStatus(Long idLocation, LocationStatus locationStatus) {
		Location location = findById(idLocation);
		location.setLocationStatus(locationStatus);
		update(location);
	}
	
	public List<Location> findByStatus(LocationStatus status) {
		List<Criterion> criterion = new ArrayList<>();
		criterion.add(
				Restrictions.eq("locationStatus", status)
		);
		return findByCriterion(criterion);
	}
	
	public void update(Long idLocation, LocationStatus locationStatus) {
		Location location = findById(idLocation);
		location.setLocationStatus(locationStatus);
		update(location);
	}
}
