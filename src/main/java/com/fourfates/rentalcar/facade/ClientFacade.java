package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.model.Client;
import com.fourfates.rentalcar.service.ClientService;

@Component
public class ClientFacade {
	
	@Autowired ClientService clientService;
	
	public void callClientSave(String nome,String cpf,String nascimento,String rg,String emissor,String sexo,String email,String telefone,String carteira,String registro){
		clientService.clientSave(nome, cpf, nascimento, rg, emissor, sexo, email, telefone, carteira, registro);
	}

	public void callClientStatusUpdate(Long clientId) {
		clientService.clientSatatusUpdate(clientId);
	}

	public Client callClientEdit(Long clientId) {
		Client client = clientService.clientEdit(clientId);
		return client;
	}

	public void callClientUpdate(Long clientId, String nome, String cpf, String nascimento, String rg, String emissor,
			String email, String telefone, String carteira, String registro) {
		clientService.callClientUpdate(clientId,nome, cpf, nascimento, rg, emissor, email, telefone, carteira, registro);
	}
}
