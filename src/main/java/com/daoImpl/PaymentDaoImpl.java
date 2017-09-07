package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PaymentDao;
import com.entities.Payments;

@Repository
@Transactional
public class PaymentDaoImpl implements PaymentDao
{
	 @Autowired
	 SessionFactory sessionFactory;

	public boolean saveOrUpdate(Payments payment)
	{
		// TODO Auto-generated method stub
		this.sessionFactory.getCurrentSession().saveOrUpdate(payment);
	    return true;
	}

	public List<Payments> list() {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().createQuery("from Payments").list();
	}

	public boolean delete(Payments gatusers) {
		// TODO Auto-generated method stub
		return false;
	}

}
