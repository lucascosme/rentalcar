package com.fourfates.rentalcar.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.controller.model.ClientStatus;
import com.fourfates.rentalcar.model.Car;
import com.fourfates.rentalcar.model.Client;

@Repository
public class ClientDao extends HibernateGenericDao<Client> {

	public ClientDao() {
		super(Client.class);
	}
	
	public Client findByName(Car car){
		List<Criterion> criterion = new ArrayList<>();
		criterion.add(
				Restrictions.eq("nome", car)
		);
		return findOneByCriterion(criterion);
	}
	
	public List<Client> findAllClientWithStatusActive(){
		List<Criterion> criterion = new ArrayList<>();
		criterion.add(
				Restrictions.eq("status", ClientStatus.ACTIVE)
		);
		return findByCriterion(criterion);
	}
	
	public void updateStatusClient(Long idClient, ClientStatus clientStatus) {
		Client client = findById(idClient);
		client.setStatus(clientStatus);
		update(client);
	}
	
	public void updateClient(Long clientId, String nome, String cpf, String nascimento, String rg, String emissor,
			String email, String telefone, String carteira, String registro){
		Client client = findById(clientId);
		client.setNome(nome);
		client.setCpf(cpf);
		client.setDataNasc(nascimento);
		client.setRg(rg);
		client.setEstadoEmissor(emissor);
		client.setEmail(email);
		client.setTelefone(telefone);
		client.setValidadeCarteira(carteira);
		client.setNumeroRegistro(registro);
		update(client);
	}
	}