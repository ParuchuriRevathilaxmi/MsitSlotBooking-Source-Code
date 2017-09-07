package com.services;

import java.util.List;

import com.entities.ExamDetails;
import com.entities.Payments;

public interface PaymentServices 
{
	public boolean saveOrUpdate(Payments payment);
	 
	 public List<Payments> list();
	 
	 public boolean delete(Payments payment);
}
