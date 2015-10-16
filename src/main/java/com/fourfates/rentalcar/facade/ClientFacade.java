package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.service.ClientService;

@Component
public class ClientFacade {
	
	@Autowired ClientService clientService;
	
	public void callClientSave(String nome,String cpf,String nascimento,String rg,String emissor,String sexo,String email,String telefone,String carteira,String registro){
		clientService.clientSave(nome, cpf, nascimento, rg, emissor, sexo, email, telefone, carteira, registro);
	}
}
