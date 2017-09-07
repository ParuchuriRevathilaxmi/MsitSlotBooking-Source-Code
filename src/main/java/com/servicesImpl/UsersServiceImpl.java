package com.servicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UsersDao;
import com.entities.Users;
import com.md5.EncryptPswd;
import com.services.UsersService;

@Service
public class UsersServiceImpl implements UsersService{

	 @Autowired
	    UsersDao userDao;
	 
	    public boolean saveOrUpdate(Users users) {
	        return userDao.saveOrUpdate(users);
	    }
	 
	    public List<Users> list() {
	        // TODO Auto-generated method stub
	        return userDao.list();
	    }
	 
	    public boolean delete(Users users) {
	        // TODO Auto-generated method stub
	        return userDao.delete(users);
	    }

	    
	    public int checklogin(Users u)
	    {
	    	int flag=0;
	    	String password=EncryptPswd.md5(u.getPassword());
	    	System.out.println("checklogin  "+u.getEmail_id()+"  "+password);
	    	try
	    	{
	    		if(u.getEmail_id().equals("admin") && u.getPassword().equals("1234"))
	    		{
	    			flag=3;
	    		}
	    		else
	    		{
	    		List<Users> users =  this.list();
					   for (Users users2 : users) 
					   {
						   System.out.println(users2.getEmail_id());
						   if(users2.getEmail_id().equals(u.getEmail_id()) && users2.getPassword().equals(password))
						   {
							   System.out.println(users2.getActivation()+" *******");
							   if(users2.getActivation()==1)
						    	    flag=1;
						    	  else
						    	  {
						    		  System.out.println("&&&&&&&&&&&");
						    		flag=2;
						    	  }
						   }
					   }
	    		}			   
	    	}
		     catch(Exception e)
		     {
		    	 System.out.println("I am in catch");
		    	 flag=0;
		     }
	    	System.out.println(flag+" flag value");
	     return flag;
	       }
}
