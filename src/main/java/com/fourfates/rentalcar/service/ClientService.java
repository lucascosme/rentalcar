package com.fourfates.rentalcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.controller.model.ClientStatus;
import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.model.Client;

@Service
public class ClientService {

	@Autowired private ClientDao clientDao;
	
	public void clientSave(String nome,String cpf,String nascimento,String rg,String emissor,String sexo,String email,String telefone,String carteira,String registro) {
		System.out.println("Saving client...");
		Client client = new Client();
		client.setStatus(ClientStatus.ACTIVE);
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

	public void clientSatatusUpdate(Long clientId) {
		clientDao.updateStatusClient(clientId, ClientStatus.EXCLUDED);
	}

	public Client clientEdit(Long clientId) {
		Client client = clientDao.findById(clientId);
		return client;
	}

	public void callClientUpdate(Long clientId, String nome, String cpf, String nascimento, String rg, String emissor,
			String email, String telefone, String carteira, String registro) {
		clientDao.updateClient(clientId, nome, cpf, nascimento, rg, emissor, email, telefone, carteira, registro);
	}
}




