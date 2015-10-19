package com.fourfates.rentalcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.CarStatus;
import com.fourfates.rentalcar.dao.CarDao;
import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.model.Car;
import com.fourfates.rentalcar.model.Client;
import com.fourfates.rentalcar.model.Group;

@Controller
@RequestMapping("/controller/user")
public class LocationController {

	@Autowired CarDao carDao;
	@Autowired ClientDao clientDao;
	private static final String VIEW = "newLocation";

	@RequestMapping("/newLocationView")
	public String viewLocation(ModelMap model){
		List<Car> listCarsAvailable = carDao.findByStatus(CarStatus.DISPONIVEL);
		model.addAttribute("listCarsAvailable", listCarsAvailable);
		return VIEW;
	}
	
	@RequestMapping("/locationInfoView")
	public String locationInfo(ModelMap model, @RequestParam("locationId") Long idCar){
		Car car = new Car();
		Car infoCar = carDao.findById(idCar);
		Group grupo = infoCar.getGrupo();
		String valueGroup = car.getValueGroup(grupo);
		
		List<Client> listClient = clientDao.findAll();
		
		model.addAttribute("idCar", idCar);
		model.addAttribute("infoCar", infoCar);
		model.addAttribute("valueGroup", valueGroup);
		model.addAttribute("listClient", listClient);
		
		return "infoCarInfoClient";
	}
	
	@RequestMapping("/locationInfoClientView")
	public String clientInfo(ModelMap model, @RequestParam("clientId") Long clientId,
			@RequestParam("idCar") Long idCar){
		Client client = clientDao.findById(clientId);
		model.addAttribute("client", client);
		return locationInfo(model, idCar);
	}
}
