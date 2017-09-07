package com.dao;

import java.util.List;

import com.entities.PaymentOnline;;

public interface PaymentsOnlineDao {

	public boolean saveOrUpdate(PaymentOnline payment);
	 
    public List<PaymentOnline> list();
 
    public boolean delete(PaymentOnline payment);
}
