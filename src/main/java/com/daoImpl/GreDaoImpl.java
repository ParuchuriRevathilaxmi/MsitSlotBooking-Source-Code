package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.GreDao;
import com.entities.GREApplication;

@Repository
@Transactional
public class GreDaoImpl implements GreDao 
{
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	public boolean saveOrUpdate(GREApplication greusers) {
		// TODO Auto-generated method stub
		 this.sessionFactory.getCurrentSession().saveOrUpdate(greusers);
		return false;
	}

	
	public List<GREApplication> list() {
		// TODO Auto-generated method stub
		 return this.sessionFactory.getCurrentSession().createQuery("from GREApplication").list();
	
	}

	
	public boolean delete(GREApplication greusers) {
		// TODO Auto-generated method stub
		 try {
	        	sessionFactory.getCurrentSession().delete(greusers);
	        } catch (Exception ex) {
	            return false;
	        }
	        return true;
	}

}

