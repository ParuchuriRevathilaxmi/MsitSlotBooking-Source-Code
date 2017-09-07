package com.daoImpl;

import java.util.List;

import com.dao.GatDao;
import com.entities.GATApplication;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class GatDaoImpl implements GatDao{

 @Autowired
  SessionFactory sessionFactory;
 
 
 public boolean saveOrUpdate(GATApplication gatusers) {
  System.out.println("___________________________gat save");   // TODO Auto-generated method stub
        this.sessionFactory.getCurrentSession().saveOrUpdate(gatusers);
        return true;
 }

 
 public List<GATApplication> list() {
  // TODO Auto-generated method stub
  return this.sessionFactory.getCurrentSession().createQuery("from GATApplication").list();
  
 }

 
 public boolean delete(GATApplication gatusers) {
  // TODO Auto-generated method stub
  try {
         sessionFactory.getCurrentSession().delete(gatusers);
        } catch (Exception ex) {
            return false;
        }
        return true;
 }

}