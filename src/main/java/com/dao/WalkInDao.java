package com.dao;

import java.util.List;

import com.entities.WalkInApplication;

public interface WalkInDao 
{
	public boolean saveOrUpdate(WalkInApplication walkinusers);
	 
    public List<WalkInApplication> list();
 
    public boolean delete(WalkInApplication walkinusers);
}
