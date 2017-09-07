package com.dao;

import java.util.List;

import com.entities.WalkInDates;

public interface WalkInDatesDao {
	
	public boolean saveOrUpdate(WalkInDates walkindate);
	 
    public List<WalkInDates> list();
 
    public boolean delete(WalkInDates walkindate);

}
