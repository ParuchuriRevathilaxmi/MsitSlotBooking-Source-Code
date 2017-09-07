package com.dao;

import java.util.List;

import com.entities.ExamDetails;

public interface ExamDao 
{
	public boolean saveOrUpdate(ExamDetails gatusers);
	 
    public List<ExamDetails> list();
 
    public boolean delete(ExamDetails gatusers);
}
