package com.fourfates.rentalcar.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.facade.ClientFacade;
import com.fourfates.rentalcar.model.Client;

@Controller
@RequestMapping("/controller/user")
public class ClientController {
	
	@Autowired ClientFacade clientFacade;
	@Autowired ClientDao clientDao;
	
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
	
	@RequestMapping("/clientConsultView")
	public String consultView(ModelMap model){
		List<Client> listClient = clientDao.findAllClientWithStatusActive();
		model.addAttribute("listClient", listClient);
		return "consultClient";
	}
	
	@RequestMapping("/deleteClient")
	public String deleteClient(ModelMap model,@RequestParam("clientId") Long clientId){
		clientFacade.callClientStatusUpdate(clientId);
		model.addAttribute(MessageKey.SUCESS.getKey(), Message.EXCLUDED_CLIENT_SUCESS.getKey());
		return consultView(model);
	}
	
	@RequestMapping("/editClientView")
	public String editClientView(ModelMap model,@RequestParam("clientId") Long clientId){
		Client client = clientFacade.callClientEdit(clientId);
		model.addAttribute("client", client);
		return "clientEdit";
	}
	
	@RequestMapping("/editClient")
	public String editClient(ModelMap model,@RequestParam("clientId") Long clientId,
			@RequestParam("nome")String nome,
			@RequestParam("cpf")String cpf,@RequestParam("nascimento")String nascimento,
			@RequestParam("rg")String rg,@RequestParam("emissor")String emissor,
			@RequestParam("email")String email,
			@RequestParam("telefone")String telefone,@RequestParam("carteira")String carteira,
			@RequestParam("registro")String registro){
		clientFacade.callClientUpdate(clientId,nome, cpf, nascimento, rg, emissor, email, telefone, carteira, registro);
		model.addAttribute(MessageKey.SUCESS.getKey(), Message.UPDATED_CLIENT_SUCESS.getKey());
		return consultView(model);
	}
}
