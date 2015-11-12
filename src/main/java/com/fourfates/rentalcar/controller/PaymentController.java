package com.fourfates.rentalcar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fourfates.rentalcar.controller.model.Message;
import com.fourfates.rentalcar.controller.model.MessageKey;
import com.fourfates.rentalcar.facade.PaymentFacade;

@Controller
@RequestMapping("/controller/user")
public class PaymentController {
	
	@Autowired PaymentFacade paymentFacade;
	
	@RequestMapping("/debitPaymentConfirmation")
	public String confirmPayment(ModelMap model,
			@RequestParam("total") double total,
			@RequestParam("locationId") Long locationId,
			@RequestParam("titular") String titular,
			@RequestParam("cpf") String cpf,
			@RequestParam("conta") String conta,
			@RequestParam("agencia") String agencia,
			@RequestParam("banco") String banco,
			@RequestParam("telefone") String telefone){
		
		paymentFacade.getSave(total,locationId,titular,cpf,conta,agencia,banco,telefone);
		//System.out.println("total: "+total);
		//System.out.println("locationId: "+locationId);
		
		model.addAttribute(MessageKey.SUCESS.getKey(), Message.PAYMENT_SUCESS.getKey());
		return "debitCard";
	}

}
