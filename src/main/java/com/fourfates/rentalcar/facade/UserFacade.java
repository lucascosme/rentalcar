package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.model.UserRoleType;
import com.fourfates.rentalcar.service.UserService;

@Component
public class UserFacade {

	@Autowired UserService userService;

	public void register(String userName, String name, UserRoleType userRoleType, String password,
			String passwordConfirmation) {
		userService.register(userName,name,userRoleType,password,passwordConfirmation);
	}
}
