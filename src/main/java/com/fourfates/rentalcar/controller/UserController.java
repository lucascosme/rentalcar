package com.fourfates.rentalcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.dao.UserDao;
import com.fourfates.rentalcar.facade.UserFacade;
import com.fourfates.rentalcar.model.User;
import com.fourfates.rentalcar.model.UserRoleType;

@Controller
@RequestMapping("/controller/user")
public class UserController {
	
	@Autowired UserFacade userFacade;
	@Autowired UserDao userDao;
	
	@RequestMapping("/userRegisterView")
	public String userView(ModelMap model){
		model.addAttribute("userRolesType", UserRoleType.values());
		return "userRegister";
	}
	
	@RequestMapping(value="/registing", method=RequestMethod.POST)
	public String register(ModelMap model, @RequestParam("userName") String userName,
							@RequestParam("name") String name, 
							@RequestParam("userRoleTypes") UserRoleType userRoleType,
							@RequestParam(value="password") String password,
							@RequestParam(value="passwordConfirmation") String passwordConfirmation) {
		userFacade.register(userName,name,userRoleType,password,passwordConfirmation);
		return userView(model);
	}
	
	@RequestMapping("/userConsultView")
	public String userConsult(ModelMap model){
		List<User> listUser = userDao.findAll();
		model.addAttribute("listUser", listUser);
		return "userConsult";
	}
}
