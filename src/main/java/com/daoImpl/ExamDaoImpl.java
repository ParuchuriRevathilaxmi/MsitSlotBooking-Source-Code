package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ExamDao;
import com.entities.ExamDetails;

@Repository
@Transactional
public class ExamDaoImpl implements ExamDao
{
	 @Autowired
	 SessionFactory sessionFactory;

	
	public boolean saveOrUpdate(ExamDetails gatusers) {
		// TODO Auto-generated method stub
		 this.sessionFactory.getCurrentSession().saveOrUpdate(gatusers);
	     return true;
	}

	
	public List<ExamDetails> list() {
		// TODO Auto-generated method stub
		return this.sessionFactory.getCurrentSession().createQuery("from ExamDetails").list();
	}

	
	public boolean delete(ExamDetails gatusers) {
		// TODO Auto-generated method stub
		 try {
	         sessionFactory.getCurrentSession().delete(gatusers);
	        } catch (Exception ex) {
	            return false;
	        }
	        return true;
	 
	}

}
