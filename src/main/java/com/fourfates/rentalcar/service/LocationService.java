package com.fourfates.rentalcar.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.controller.model.CarStatus;
import com.fourfates.rentalcar.controller.model.LocationBean;
import com.fourfates.rentalcar.controller.model.LocationStatus;
import com.fourfates.rentalcar.dao.CarDao;
import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.dao.LocationDao;
import com.fourfates.rentalcar.model.Car;
import com.fourfates.rentalcar.model.Client;
import com.fourfates.rentalcar.model.Location;

@Service
public class LocationService {
	
	@Autowired LocationDao locationDao;
	@Autowired CarDao carDao;
	@Autowired ClientDao clientDao;
	private double total=0.0;
	public long id;
	
	public LocationBean saveLocation(Long car,Long idclient,String tipoTarifa,String localLocacao,String localDevolucao,double tarifaDias,double tarifaKm) {
		
		Car idCar = carDao.findById(car);
		Client idClient = clientDao.findById(idclient);
		
		Location location = new Location();
		location.setCar(idCar);
		location.setClient(idClient);
		String dataLocacao = LocalDate.now().toString();
		location.setDataLocacao(dataLocacao);
		String dataDevolucao = LocalDate.now().toString();
		location.setDataDevolucao(dataDevolucao);
		location.setLocalDevolucao(localDevolucao);
		location.setLocalLocacao(localLocacao);
		location.setLocationStatus(LocationStatus.EM_ABERTO);
		location.setTipoTarifa(tipoTarifa);
		
		carDao.update(car, CarStatus.INDISPONIVEL);
		Long locationId = locationDao.save(location);
		
		if (tipoTarifa.equals("kmlivre")){
			total = idCar.getTarifa_kmlivre()*tarifaDias;
		}else{
			total = idCar.getTarifa_kmcontrolado()*tarifaKm;
		}
		
		LocationBean locationBean = new LocationBean();
		locationBean.setTotal(total);
		locationBean.setLocationId(locationId);
		
		return locationBean;
	}

	public void updateStatusCar(Long carId) {
		carDao.update(carId, CarStatus.DISPONIVEL);
	}
}
