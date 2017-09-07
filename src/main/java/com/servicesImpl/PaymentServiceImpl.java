package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PaymentDao;
import com.entities.ExamDetails;
import com.entities.Payments;
import com.services.PaymentServices;

@Service
public class PaymentServiceImpl implements PaymentServices
{
	@Autowired
	PaymentDao paymentdao;

	public boolean saveOrUpdate(Payments payment) {
		// TODO Auto-generated method stub
		return paymentdao.saveOrUpdate(payment);
	}

	public List<Payments> list() {
		// TODO Auto-generated method stub
		return paymentdao.list();
	}

	public boolean delete(Payments payment) {
		// TODO Auto-generated method stub
		return paymentdao.delete(payment);
	}
	
	
}
