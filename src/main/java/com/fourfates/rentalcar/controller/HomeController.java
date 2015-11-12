package com.fourfates.rentalcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fourfates.rentalcar.service.ClientService;

@Controller
@RequestMapping("/controller/user")
public class HomeController {

	private static final String HOME = "home";
	
	@Autowired private ClientService clientService;

	@RequestMapping("/home")
	public String view() {
		return HOME;
	}
}