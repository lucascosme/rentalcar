package com.fourfates.rentalcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.model.Client;

@Service
public class ClientService {

	@Autowired private ClientDao clientDao;
	
	public void clientSave(String nome,String cpf,String nascimento,String rg,String emissor,String sexo,String email,String telefone,String carteira,String registro) {
		System.out.println("Saving client...");
		Client client = new Client();
		client.setNome(nome);
		client.setCpf(cpf);
		client.setDataNasc(nascimento);
		client.setRg(rg);
		client.setEstadoEmissor(emissor);
		client.setSexo(sexo);
		client.setEmail(email);
		client.setTelefone(telefone);
		client.setValidadeCarteira(carteira);
		client.setNumeroRegistro(registro);
		
		clientDao.save(client);
		System.out.println("Client saved!!!");
	}
}