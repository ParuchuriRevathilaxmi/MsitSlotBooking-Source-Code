package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.WalkInDatesDao;
import com.entities.WalkInApplication;
import com.entities.WalkInDates;
import com.services.WalkinDatesService;

@Service
public class WalkinDatesServiceImpl implements WalkinDatesService {

	@Autowired
	WalkInDatesDao walkinDatesDao;

	public boolean saveOrUpdate(WalkInDates walkindates) {
		// TODO Auto-generated method stub
		return walkinDatesDao.saveOrUpdate(walkindates);
	}

	public List<WalkInDates> list() {
		// TODO Auto-generated method stub
		return walkinDatesDao.list();
	}

	public boolean delete(WalkInDates walkindates) {
		// TODO Auto-generated method stub
		  return walkinDatesDao.delete(walkindates);
	}

}
