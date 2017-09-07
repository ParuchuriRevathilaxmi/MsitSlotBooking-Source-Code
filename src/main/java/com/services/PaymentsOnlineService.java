package com.services;

import java.util.List;

import com.entities.PaymentOnline;;

public interface PaymentsOnlineService {

	public boolean saveOrUpdate(PaymentOnline payment);
	 
	 public List<PaymentOnline> list();
	 
	 public boolean delete(PaymentOnline payment);
	
}
