package com.fourfates.rentalcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fourfates.rentalcar.service.ClientService;

@Controller
@RequestMapping("/controller/user")
public class HomeController {

	private static final String HOME = "home1";
	
	@Autowired private ClientService clientService;

	@RequestMapping("/home")
	public String view() {
		return HOME;
	}

	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(ModelMap model) {
		//clientService.save();
		model.addAttribute("warning");
		return view();
	}
}