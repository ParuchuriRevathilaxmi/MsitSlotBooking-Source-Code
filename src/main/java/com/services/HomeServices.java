package com.services;

import java.util.List;

import com.entities.DashHome;

public interface HomeServices {

	 public boolean saveOrUpdate(DashHome users);
	 
	    public List<DashHome> list();
	 
	    public boolean delete(DashHome users);
	
}
