package com.fourfates.rentalcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.dao.GroupDao;
import com.fourfates.rentalcar.facade.GroupFacade;
import com.fourfates.rentalcar.model.Group;

@Controller
@RequestMapping("/controller/user")
public class GroupController {
	
	@Autowired GroupFacade groupFacade;
	@Autowired GroupDao gruDao;
	
	private static final String VIEW = "groupRegister";

	@RequestMapping("/groupRegisterView")
	public String viewGroup(){
		return VIEW;
	}
	
	@RequestMapping("/groupSave")
	public String groupSave(ModelMap model,@RequestParam("grupo") String group){
		
		groupFacade.getSave(group);
		
		model.addAttribute(MessageKey.SUCESS.getKey(), Message.GROUP_SUCESS.getKey());
		
		return viewGroup();
	}
	
	@RequestMapping("/groupConsultView")
	public String groupConsult(ModelMap model){
		List<Group> listGroup = gruDao.findAll();
		model.addAttribute("listGroup", listGroup);
		return "groupConsult";
	}

}
