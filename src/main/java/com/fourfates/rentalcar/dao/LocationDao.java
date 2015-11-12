package com.fourfates.rentalcar.dao;

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
}
