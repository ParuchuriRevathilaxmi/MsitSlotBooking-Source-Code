package com.services;

import java.util.List;

import com.entities.ExamDetails;


public interface ExamServices 
{
	public boolean saveOrUpdate(ExamDetails gatusers);
	 
	 public List<ExamDetails> list();
	 
	 public boolean delete(ExamDetails gatusers);
}
