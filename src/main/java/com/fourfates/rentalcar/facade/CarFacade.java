package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.service.CarService;

@Component
public class CarFacade {
	
	@Autowired CarService carService;
	
	public void callSaveCar(String modelo,String fabricante,String cor,String chassi,String placa,Long group,String cidade,String estado,double km,double kmLivre,double kmControlado){
		carService.CarSave(modelo,fabricante,cor,chassi,placa,group,cidade,estado,km,kmLivre,kmControlado);
	}

}
