package com.fourfates.rentalcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.dao.ClientDao;
import com.fourfates.rentalcar.model.Client;

@Service
public class ClientSaverService {

	@Autowired private ClientDao clientDao;

	public void save() {
		System.out.println("Saving client...");
		Client client = new Client();
		client.setName("Nome do Cara");
		clientDao.save(client );
		System.out.println("Client saved!!!");
	}
}