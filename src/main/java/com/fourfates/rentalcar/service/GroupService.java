package com.fourfates.rentalcar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.dao.GroupDao;
import com.fourfates.rentalcar.model.Group;

@Service
public class GroupService {
	
	@Autowired GroupDao groupDao;
	
	public void save(String group){
		Group newGroup = new Group();
		newGroup.setCategoria(group);
		
		groupDao.save(newGroup);
		
	}

	public List<Group> getListGroup() {
		List<Group> listGroup = groupDao.findAll();
		return listGroup;
	}
}
