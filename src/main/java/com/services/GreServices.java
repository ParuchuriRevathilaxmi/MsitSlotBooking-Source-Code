package com.services;

import java.util.List;

import com.entities.GREApplication;

public interface GreServices 
{
	 public boolean saveOrUpdate(GREApplication greusers);
	 
	 public List<GREApplication> list();
	 
	 public boolean delete(GREApplication greusers);
}
