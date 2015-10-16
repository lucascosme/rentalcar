package com.fourfates.rentalcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.facade.ClientFacade;

@Controller
@RequestMapping("/controller/user")
public class ClientController {
	
	@Autowired ClientFacade clientFacade;
	
	private static final String VIEW = "clientRegister";

	@RequestMapping("/clientRegisterView")
	public String ClientView(ModelMap model){
		return VIEW;
	}
	
	@RequestMapping(value="/saveClient", method=RequestMethod.POST)
	public String save(ModelMap model ,@RequestParam("nome")String nome,
			@RequestParam("cpf")String cpf,@RequestParam("nascimento")String nascimento,
			@RequestParam("rg")String rg,@RequestParam("emissor")String emissor,
			@RequestParam("sexo")String sexo,@RequestParam("email")String email,
			@RequestParam("telefone")String telefone,@RequestParam("carteira")String carteira,
			@RequestParam("registro")String registro) {
		try {
			clientFacade.callClientSave(nome, cpf, nascimento, rg, emissor, sexo, email, telefone, carteira, registro);
			model.addAttribute(MessageKey.SUCESS.getKey(), Message.SAVE_CLIENT_SUCESS.getKey());
		}catch (Exception e) {
			model.addAttribute(MessageKey.ERROR.getKey(), Message.SAVE_CLIENT_ERRO.getKey());
		}
		return ClientView(model);
	}
}
