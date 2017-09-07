package com.dao;

import java.util.List;

import com.entities.DashHome;

public interface HomeDao {

	 public boolean saveOrUpdate(DashHome users);
	 
	    public List<DashHome> list();
	 
	    public boolean delete(DashHome users);
	    

}
