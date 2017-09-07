package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.HomeDao;
import com.entities.DashHome;

@Repository
@Transactional
public class HomeDaoImpl implements HomeDao{

	 @Autowired
	 SessionFactory session;
	 public boolean saveOrUpdate(DashHome users) {
			System.out.println("___________________________12");
	        // TODO Auto-generated method stub
	        session.getCurrentSession().saveOrUpdate(users);
	        return true;
	    }
	 public List<DashHome> list() 
	    {
	        return session.getCurrentSession().createQuery("from DashHome").list();
	    }
	 
	    public boolean delete(DashHome users) {
	        try {
	            session.getCurrentSession().delete(users);
	        } catch (Exception ex) {
	            return false;
	        }
	        return true;
	    }
}
