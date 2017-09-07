package com.dao;

import java.util.List;

import com.entities.Payments;


public interface PaymentDao
{
	public boolean saveOrUpdate(Payments payment);
	 
    public List<Payments> list();
 
    public boolean delete(Payments payment);
}
