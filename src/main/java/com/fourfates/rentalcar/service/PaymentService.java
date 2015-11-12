package com.fourfates.rentalcar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fourfates.rentalcar.controller.model.LocationStatus;
import com.fourfates.rentalcar.dao.LocationDao;
import com.fourfates.rentalcar.dao.PaymentDebitDao;
import com.fourfates.rentalcar.model.Location;
import com.fourfates.rentalcar.model.PaymentDebit;

@Service
public class PaymentService {
	
	@Autowired PaymentDebitDao paymentDebitDao;
	@Autowired LocationDao locationDao;
	
	public void save(double total,Long locationId,String titular,String cpf,String conta,String agencia,String banco,String telefone) {
		
		Location location = locationDao.findById(locationId);
		Long idLocation = location.getId();
		
		PaymentDebit paymentDebit = new PaymentDebit();
		paymentDebit.setAgencia(agencia);
		paymentDebit.setBanco(banco);
		paymentDebit.setContaCorrente(conta);
		paymentDebit.setCpf(cpf);
		paymentDebit.setJuros(0);
		paymentDebit.setLocacao(location);
		paymentDebit.setNomeTitular(titular);
		paymentDebit.setTelefone(telefone);
		paymentDebit.setValor(total);
		
		paymentDebitDao.save(paymentDebit);
		
		locationDao.updateLocationStatus(idLocation, LocationStatus.PAGO);
		
	}
}
