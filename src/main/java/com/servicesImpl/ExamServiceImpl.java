package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ExamDao;
import com.entities.ExamDetails;
import com.services.ExamServices;

@Service
public class ExamServiceImpl implements ExamServices
{
	@Autowired
	ExamDao examdao;
	
	
	public boolean saveOrUpdate(ExamDetails gatusers) {
		// TODO Auto-generated method stub
		return examdao.saveOrUpdate(gatusers);
	}

	
	public List<ExamDetails> list() {
		// TODO Auto-generated method stub
		return examdao.list();
	}

	
	public boolean delete(ExamDetails gatusers) {
		// TODO Auto-generated method stub
		return examdao.delete(gatusers);
	}

}
