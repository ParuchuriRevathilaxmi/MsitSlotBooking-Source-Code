package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GreDao;
import com.entities.GREApplication;
import com.services.GreServices;

@Service
public class GreServiceImpl implements GreServices
{

	 @Autowired
	 GreDao greDao;
	 
	
	public boolean saveOrUpdate(GREApplication greusers) {
		// TODO Auto-generated method stub
		return greDao.saveOrUpdate(greusers);
	}

	
	public List<GREApplication> list() {
		// TODO Auto-generated method stub
		return  greDao.list();
	}

	
	public boolean delete(GREApplication greusers) {
		// TODO Auto-generated method stub
		 return greDao.delete(greusers);
	}

}
