package com.fourfates.rentalcar.facade;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.fourfates.rentalcar.service.PaymentService;

@Component
public class PaymentFacade {
	
	@Autowired PaymentService paymentService;
	
	public void getSave(double total,Long locationId,String titular,String cpf,String conta,String agencia,String banco,String telefone){
		paymentService.save(total,locationId,titular,cpf,conta,agencia,banco,telefone);
	}

}
