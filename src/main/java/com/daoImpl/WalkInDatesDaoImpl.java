package com.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.SharedSessionContract;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.WalkInDatesDao;
import com.entities.GATApplication;
import com.entities.WalkInDates;

@Repository
@Transactional
public class WalkInDatesDaoImpl implements WalkInDatesDao{

	@Autowired
	SessionFactory session;

	public boolean saveOrUpdate(WalkInDates walkindate) {
		// TODO Auto-generated method stub
		session.getCurrentSession().saveOrUpdate(walkindate);
		return true;
	}

	public List<WalkInDates> list() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from WalkInDates").list();
	
	}

	public boolean delete(WalkInDates walkindate)
	{
	
		  try {
			  session.getCurrentSession().delete(walkindate);
		        } catch (Exception ex) {
		            return false;
		        }
		        return true;
		 
	    
	}
	
	
}
