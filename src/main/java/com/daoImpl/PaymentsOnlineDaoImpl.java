package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PaymentsOnlineDao;
import com.entities.PaymentOnline;

@Repository
@Transactional
public class PaymentsOnlineDaoImpl implements PaymentsOnlineDao {

	@Autowired
	 SessionFactory sessionFactory;
	
	public boolean saveOrUpdate(PaymentOnline payment) {
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().saveOrUpdate(payment);
		return true;
	}

	public List<PaymentOnline> list() {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().createQuery("from PaymentOnline").list();
	}

	public boolean delete(PaymentOnline payment) {
		// TODO Auto-generated method stub
		return false;
	}

}
