package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.WalkInDao;
import com.entities.WalkInApplication;
import com.services.WalkInSevices;
@Service
public class WalkInServiceImpl implements WalkInSevices
{
	@Autowired
	WalkInDao walkinDao;
	
	public boolean saveOrUpdate(WalkInApplication walkinusers) 
	{
		// TODO Auto-generated method stub
		return walkinDao.saveOrUpdate(walkinusers);
	}

	public List<WalkInApplication> list() {
		// TODO Auto-generated method stub
		return walkinDao.list();
	}

	public boolean delete(WalkInApplication walkinusers) {
		// TODO Auto-generated method stub
		return false;
	}

}
