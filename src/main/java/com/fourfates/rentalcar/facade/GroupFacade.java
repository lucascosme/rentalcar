package com.fourfates.rentalcar.facade;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.model.Group;
import com.fourfates.rentalcar.service.GroupService;

@Component
public class GroupFacade {

	@Autowired GroupService groupService;
	
	public void getSave(String group){
		groupService.save(group);		
	}

	public List<Group> getGroup() {
		List<Group> listGroup = groupService.getListGroup();
		return listGroup;
	}
}
