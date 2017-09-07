package com.servicesImpl;

import java.util.List;

import com.entities.GATApplication;
import com.services.GatServices;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GatDao;

@Service
public class GatServiceImpl implements GatServices
{
  @Autowired
 GatDao gatDao;
 
 
 public boolean saveOrUpdate(GATApplication gatusers) {
  // TODO Auto-generated method stub
  return gatDao.saveOrUpdate(gatusers);
 }

 
 public List<GATApplication> list() {
  // TODO Auto-generated method stub
  return gatDao.list();
 }

 
 public boolean delete(GATApplication gatusers) {
  // TODO Auto-generated method stub
  return gatDao.delete(gatusers);
 }

}