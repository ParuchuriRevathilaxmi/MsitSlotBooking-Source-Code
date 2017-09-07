package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PaymentsOnlineDao;
import com.entities.PaymentOnline;
import com.services.PaymentsOnlineService;

@Service
public class PaymentOnlineServiceImpl implements PaymentsOnlineService {

	@Autowired
	PaymentsOnlineDao paymentdao;
	
	public boolean saveOrUpdate(PaymentOnline payment) {
		// TODO Auto-generated method stub
		return paymentdao.saveOrUpdate(payment);
	}

	public List<PaymentOnline> list() {
		// TODO Auto-generated method stub
		return paymentdao.list();
	}

	public boolean delete(PaymentOnline payment) {
		// TODO Auto-generated method stub
		return paymentdao.delete(payment);
	}

	
}
