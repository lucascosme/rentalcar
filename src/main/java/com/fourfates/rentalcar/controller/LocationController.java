package com.fourfates.rentalcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.CarStatus;
import com.fourfates.rentalcar.controller.model.LocationBean;
import com.fourfates.rentalcar.controller.model.LocationStatus;
import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.dao.CarDao;
import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.dao.LocationDao;
import com.fourfates.rentalcar.facade.LocationFacade;
import com.fourfates.rentalcar.model.Car;
import com.fourfates.rentalcar.model.Client;
import com.fourfates.rentalcar.model.Location;
import com.fourfates.rentalcar.service.LocationService;

@Controller
@RequestMapping("/controller/user")
public class LocationController {

	@Autowired LocationService locationService;
	@Autowired LocationFacade locationFacade;
	@Autowired CarDao carDao;
	@Autowired ClientDao clientDao;
	@Autowired LocationDao locationDao;
	
	private static final String VIEW = "newLocation";
	
	@RequestMapping("/newLocationView")
	public String viewLocation(ModelMap model){
		List<Car> listCarsAvailable = carDao.findByStatus(CarStatus.DISPONIVEL);
		model.addAttribute("listCarsAvailable", listCarsAvailable);
		return VIEW;
	}
	
	@RequestMapping("/locationInfoView")
	public String locationInfo(ModelMap model, @RequestParam("locationId") Long idCar){
		Car infoCar = carDao.findById(idCar);
		List<Client> listClient = clientDao.findAll();
		
		model.addAttribute("infoCar", infoCar);
		model.addAttribute("listClient", listClient);
		
		return "infoCarInfoClient";
	}
	
	@RequestMapping("/confirmLocation")
	public String payment(ModelMap model ,@RequestParam("idCar")Long car,
			@RequestParam("client") Long idclient,
			@RequestParam("tarifa") String tipoTarifa,
			@RequestParam(value="tarifaDias",required=false) double tarifaDias,
			@RequestParam(value="tarifaKm", required=false) double tarifaKm,
			@RequestParam("pagamento") String pagamento,
			@RequestParam("locacao") String localLocacao,
			@RequestParam("devolucao") String localDevolucao){
		
		LocationBean locationBean = locationFacade.getSave(car,idclient,tipoTarifa,localLocacao,localDevolucao,tarifaDias,tarifaKm);
		
		model.addAttribute("locationId", locationBean.getLocationId());
		model.addAttribute("saveLocation", locationBean.getTotal());
		
		if (pagamento.equals("debito")){
			return "debitCard";
		}else{
			return "creditCard";
		}
	}
	
	@RequestMapping("/locationInfoClientView")
	public String clientInfo(ModelMap model,
			@RequestParam("clientId") Long clientId,
			@RequestParam("carId") Long idCar){
		
		Car car = carDao.findById(idCar);
		Client client = clientDao.findById(clientId);
		model.addAttribute("client", client);
		model.addAttribute("car", car);
		return "teste";
	}
	
	@RequestMapping("/reportView")
	public String reportView(ModelMap model){
		List<Location> listLocation = locationDao.findByStatus(LocationStatus.PAGO);
		model.addAttribute("listLocation", listLocation);
		return "reportConsult";
	}
	
	@RequestMapping("/devolutionRegisterView")
	public String devolutionRegisterView(ModelMap model){
		List<Location> listLocation = locationDao.findByStatus(LocationStatus.PAGO);
		model.addAttribute("listLocation", listLocation);
		return "devolutionRegister";
	}
	
	@RequestMapping("/devolutionRegister")
	public String devolutionRegister(ModelMap model,@RequestParam("locationId")Long locationId){
		locationFacade.callUpdateStatusCarAndStatusLocation(locationId);
		model.addAttribute(MessageKey.SUCESS.getKey(), Message.DEVOLUTION_SUCESS.getKey());
		return devolutionRegisterView(model);
	}
}
