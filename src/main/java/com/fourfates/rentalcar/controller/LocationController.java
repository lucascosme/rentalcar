package com.fourfates.rentalcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fourfates.rentalcar.dao.LocationDao;
import com.fourfates.rentalcar.model.Car;

@Controller
@RequestMapping("/controller/user")
public class LocationController {
	
	@Autowired LocationDao locationDao;
	
	@RequestMapping("/newLocationView")
	public String LocationView(){
		locationDao.findByCriterion(List<Car> Car);
		return "";
	}

}
