package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.WalkInDao;
import com.entities.WalkInApplication;

@Repository
@Transactional
public class WalkInDaoImpl implements WalkInDao{

	@Autowired
	SessionFactory session;
	
	public boolean saveOrUpdate(WalkInApplication walkinusers) 
	{
		// TODO Auto-generated method stub
		session.getCurrentSession().saveOrUpdate(walkinusers);
		return true;
	}

	public List<WalkInApplication> list() 
	{
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from WalkInApplication").list();
	}

	public boolean delete(WalkInApplication walkinusers) {
		// TODO Auto-generated method stub
		return false;
	}

}
