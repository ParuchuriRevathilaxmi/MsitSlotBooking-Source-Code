package com.services;

import java.util.List;

import com.entities.WalkInApplication;

public interface WalkInSevices 
{
	public boolean saveOrUpdate(WalkInApplication walkinusers);
	 
	 public List<WalkInApplication> list();
	 
	 public boolean delete(WalkInApplication walkinusers);
}
