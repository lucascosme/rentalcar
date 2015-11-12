package com.fourfates.rentalcar.dao;

import org.springframework.stereotype.Repository;

import com.fourfates.rentalcar.model.PaymentDebit;

@Repository
public class PaymentDebitDao extends HibernateGenericDao<PaymentDebit> {

	public PaymentDebitDao(){
		super(PaymentDebit.class);
	}
}

