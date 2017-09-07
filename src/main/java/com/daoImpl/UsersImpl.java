package com.daoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Users;
import com.dao.UsersDao;

@Repository
@Transactional
public class UsersImpl implements UsersDao{

	 @Autowired
	 SessionFactory sessionFactory;
	 
	public boolean saveOrUpdate(Users users) {
		System.out.println("___________________________12");
        // TODO Auto-generated method stub
        this.sessionFactory.getCurrentSession().saveOrUpdate(users);
        return true;
    }
 
    public List<Users> list() 
    {
        return this.sessionFactory.getCurrentSession().createQuery("from Users").list();
    }
 
    public boolean delete(Users users) {
        try {
        	sessionFactory.getCurrentSession().delete(users);
        } catch (Exception ex) {
            return false;
        }
        return true;
    }

	

	
}
