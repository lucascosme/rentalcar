package com.fourfates.rentalcar.service;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.dao.UserDao;
import com.fourfates.rentalcar.dao.UserRolesDao;
import com.fourfates.rentalcar.model.User;
import com.fourfates.rentalcar.model.UserRoleType;
import com.fourfates.rentalcar.model.UserRoles;

@Service
public class UserService {
	
	@Autowired UserDao userDao;
	@Autowired UserRolesDao userRolesDao;
	
	public void register(String userName, String name, UserRoleType userRoleType, String password,
			String passwordConfirmation) {
		User userFromDB = userDao.findByUserName(userName);
		if (Objects.isNull(userFromDB)) {
			User user = createUser(userRoleType, name, userName, password);
			UserRoleType[] userRoleTypes = UserRoleType.getTypes(userRoleType);
			for (UserRoleType type : userRoleTypes) {
				UserRoles userRoles = new UserRoles(user, type);
				userRolesDao.save(userRoles);
			}
		} else {
			System.out.println("###########################################ERRO#########################");
		}		
	}
	
	private User createUser(UserRoleType userRoleType, String name, String userName, String password) {
			return new User(name, userName, password);
	}

}
