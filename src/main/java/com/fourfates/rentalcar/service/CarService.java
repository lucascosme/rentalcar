package com.fourfates.rentalcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.controller.model.CarStatus;
import com.fourfates.rentalcar.dao.CarDao;
import com.fourfates.rentalcar.dao.GroupDao;
import com.fourfates.rentalcar.model.Car;
import com.fourfates.rentalcar.model.Group;

@Service
public class CarService {
	
	@Autowired GroupDao grupDao;
	@Autowired CarDao carDao;
	
	public void CarSave(String modelo, String fabricante, String cor, String chassi, String placa, Long group,
			String cidade, String estado, double km, double kmLivre, double kmControlado) {
		
		Group returnGroup = grupDao.findById(group);
		
		Car car = new Car();
		car.setModelo(modelo);
		car.setFabricante(fabricante);
		car.setCor(cor);
		car.setChassi(chassi);
		car.setPlaca(placa);
		car.setGrupo(returnGroup);
		car.setCidade(cidade);
		car.setEstado(estado);
		car.setKm(km);
		car.setTarifa_kmlivre(kmLivre);
		car.setTarifa_kmcontrolado(kmControlado);
		car.setStatus(CarStatus.DISPONIVEL.toString());
		
		carDao.save(car);
	}

}
