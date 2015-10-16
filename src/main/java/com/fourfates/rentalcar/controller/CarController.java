package com.fourfates.rentalcar.controller;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.dao.GroupDao;
import com.fourfates.rentalcar.facade.CarFacade;
import com.fourfates.rentalcar.model.Group;

@Controller
@RequestMapping("/controller/user")
public class CarController {
	
	@Autowired GroupDao grupDao;
	@Autowired CarFacade carFacade;
	
	@RequestMapping("/carRegisterView")
	public String carView(ModelMap model){
		List<Group> group = grupDao.findAll();
		model.addAttribute("listGroup", group);
		return "carRegister";
	}
	
	@RequestMapping("/carSave")
	public String carSave(ModelMap model,@RequestParam("modelo") String modelo,@RequestParam("fabricante") String fabricante,
			@RequestParam("cor") String cor,@RequestParam("chassi") String chassi,
			@RequestParam("placa") String placa,@RequestParam("grupo") Long group,
			@RequestParam("cidade") String cidade, @RequestParam("estado") String estado,
			@RequestParam("km") double km, @RequestParam("kmLivre") double kmLivre,
			@RequestParam("kmControlado") double kmControlado){
		try{
			carFacade.callSaveCar(modelo,fabricante,cor,chassi,placa,group,cidade,estado,km,kmLivre,kmControlado);
			model.addAttribute(MessageKey.SUCESS.getKey(), Message.SAVE_CAR_SUCESS.getKey());
		}catch(Exception e){
			model.addAttribute(MessageKey.ERROR.getKey(), Message.SAVE_CAR_ERROR.getKey());
		}
		return carView(model);
	}
public static void main(String[] args) {
	System.out.println(LocalDateTime.now());
}
}
