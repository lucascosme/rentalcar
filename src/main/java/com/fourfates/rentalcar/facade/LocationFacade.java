package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.controller.model.LocationBean;
import com.fourfates.rentalcar.service.LocationService;

@Component
public class LocationFacade {
	
	@Autowired LocationService locationService;

	public LocationBean getSave(Long car,Long idclient,String tipoTarifa,String localLocacao,String localDevolucao,double tarifaDias,double tarifaKm){
		return locationService.saveLocation(car,idclient,tipoTarifa,localLocacao,localDevolucao,tarifaDias,tarifaKm);
	}

	public void callUpdateStatusCar(Long carId) {
		locationService.updateStatusCar(carId);
		
	}
}
