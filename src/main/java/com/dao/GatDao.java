package com.dao;

import java.util.List;

import com.entities.GATApplication;

public interface GatDao 
{
	public boolean saveOrUpdate(GATApplication gatusers);
	 
    public List<GATApplication> list();
 
    public boolean delete(GATApplication gatusers);
}
