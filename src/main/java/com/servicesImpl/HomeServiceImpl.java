package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HomeDao;
import com.entities.DashHome;
import com.services.HomeServices;

@Service
public class HomeServiceImpl implements HomeServices {

	 @Autowired
	    HomeDao homeDao;
	 
	 public boolean saveOrUpdate(DashHome users) 
	 {
	        return homeDao.saveOrUpdate(users);
	 }
	 
	    public List<DashHome> list() {
	        // TODO Auto-generated method stub
	        return homeDao.list();
	    }
	 
	    public boolean delete(DashHome users) {
	        // TODO Auto-generated method stub
	        return homeDao.delete(users);
	    }
}
