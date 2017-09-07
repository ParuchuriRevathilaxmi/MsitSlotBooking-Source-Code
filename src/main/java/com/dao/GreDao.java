package com.dao;

import java.util.List;

import com.entities.GREApplication;

public interface GreDao 
{
	public boolean saveOrUpdate(GREApplication greusers);
	 
    public List<GREApplication> list();
 
    public boolean delete(GREApplication greusers);
}
