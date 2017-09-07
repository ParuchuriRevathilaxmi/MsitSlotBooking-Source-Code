package com.services;

import java.util.List;

import com.entities.GATApplication;

public interface GatServices 
{
	public boolean saveOrUpdate(GATApplication gatusers);
	 
	 public List<GATApplication> list();
	 
	 public boolean delete(GATApplication gatusers);
}
