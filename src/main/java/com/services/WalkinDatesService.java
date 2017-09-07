package com.services;

import java.util.List;

import com.entities.WalkInDates;

public interface WalkinDatesService {

	public boolean saveOrUpdate(WalkInDates walkindates);
	 
	 public List<WalkInDates> list();
	 
	 public boolean delete(WalkInDates walkindates);
}
