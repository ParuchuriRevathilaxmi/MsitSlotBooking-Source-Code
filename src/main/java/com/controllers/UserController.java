package com.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.activation.ForgotPassword;
import com.activation.SendMail;
import com.entities.PaymentOnline;
import com.entities.Users;
import com.entities.WalkInApplication;
import com.entities.WalkInDates;
import com.md5.EncryptPswd;
import com.services.PaymentsOnlineService;
import com.services.UsersService;
import com.services.WalkInSevices;
import com.services.WalkinDatesService;
 
@Controller
@RequestMapping("users")
public class UserController {
 
    @Autowired
    UsersService userServices;
    
    @Autowired
    WalkInSevices walkinServices;
    
    @Autowired
    WalkinDatesService walkindatesServices;
    
    @Autowired
	PaymentsOnlineService payments;
  
    //registration page
    @RequestMapping(value ="/reg", method = RequestMethod.POST)
    public ModelAndView registration() 
    {
    	System.out.println("I am in reg");
        ModelAndView view = new ModelAndView("registration");
        return view;
    }
    
    //login page
    @RequestMapping(value = "/log", method = RequestMethod.POST)
    public ModelAndView login() {
    	System.out.println("I am in log");
    	return new ModelAndView("login");
    }
 
    //activate and set password through mail
    @RequestMapping(value = "/emailcheck", method = RequestMethod.POST)
    public @ResponseBody ModelAndView emailcheck(@RequestParam("email")String email)
    {
    	System.out.println(email+"  I am in emailcheck");
    	try
    	{
	    	List<Users> list = userServices.list();
	    	if(list!=null)
	    	{
		    	for (Users users : list)
		    	{
		    		System.out.println(users.getEmail_id()+"  "+email);
		    		if(users.getEmail_id().equals(email))
		    			return new ModelAndView("login", "error","User already Exists");
		    	}
	    	}
    	}
    	catch(Exception e)
    	{
    		SendMail sendMail=new SendMail();
        	if(sendMail.sendMail(email))
        		return new ModelAndView("login", "sucess","Please activate user account through mail");
        	else
        		return new ModelAndView("login", "error","In-valid email_id");
    	}
		SendMail sendMail=new SendMail();
    	if(sendMail.sendMail(email))
    		return new ModelAndView("login", "sucess","Please activate user account through mail");
    	else
    		return new ModelAndView("login", "error","In-valid email_id");
    }
    
    //setting password
    @RequestMapping(value = "/setPswd", method = RequestMethod.GET)
    public @ResponseBody ModelAndView setPswd(@RequestParam String email)
    {
    	System.out.println("I am in set pwsd");
    	try
    	{
	    	List<Users> list = userServices.list();
	    	if(list!=null)
	    	{
	    		for (Users users : list)
		    	{
		    		System.out.println(users.getEmail_id()+"  "+email);
		    		if(users.getEmail_id().equals(email))
		    			return new ModelAndView("login", "sucess","You are already registered user\n please sign in");
		    	}
	    	}
    	}
    	catch(Exception e)
    	{
    		return new ModelAndView("setPassword", "email",email);
    	}
    	return new ModelAndView("setPassword", "email",email);
    }
    
  //setting password
    @RequestMapping(value = "/setfrgtPswd", method = RequestMethod.GET)
    public @ResponseBody ModelAndView setfrgtPswd(@RequestParam String email)
    {
    	return new ModelAndView("setPassword", "email",email);
    }
    
    
  //check password
    @RequestMapping(value = "/checkPswd", method = RequestMethod.POST)
    public @ResponseBody ModelAndView checkPswd(@RequestParam("email")String email,@RequestParam("pswd")String pswd,@RequestParam("cpswd")String cpswd)
    {
    	int flag=0;
    	System.out.println(email+"   "+pswd+"   "+cpswd+"  I am in setPwsd ");
		if((pswd.trim()).equals(cpswd.trim()))
		{
			try
	    	{
				List<Users> list = userServices.list();
				for (Users users : list)
		    	{
					if(users.getEmail_id().equals(email))
					{
						flag=1;
						String password=EncryptPswd.md5(pswd);
						users.setPassword(password);
						System.out.println(userServices.saveOrUpdate(users)+" checking user registration");
					}
		    	
		    	}
	    	}
			catch(Exception e)
			{
				
			}
			if(flag==0)
			{
			Users users=new Users();
			users.setEmail_id(email);
			String password=EncryptPswd.md5(pswd);
			users.setPassword(password);
			users.setActivation(0);
			System.out.println(userServices.saveOrUpdate(users)+" checking user registration");
			}
			if(flag==0)
				return new ModelAndView("login","sucess","your accout is activated sucessfully");
			else
				return new ModelAndView("login","sucess","your password has been changed sucessfully");
		}
    	else
    		return new ModelAndView("setPassword", "error","Passwords doesn't match");
    }
    
    //forgot pswd
    @RequestMapping(value = "/frgtpswd", method = RequestMethod.GET)
    public ModelAndView forgotPswd() 
    {
    	ModelAndView view = new ModelAndView("forgotPswd");
        return view;
    }

    //send Pswd
    @RequestMapping(value = "/sendpswd", method = RequestMethod.POST)
    public ModelAndView sendpswd(@RequestParam("email")String email) 
    {
    	try
    	{
	    	List<Users> list = userServices.list();
	    	if(list!=null)
	    	{
	    		for (Users users : list)
		    	{
		    		System.out.println(users.getEmail_id()+"  "+email);
		    		if(users.getEmail_id().equals(email))
		    		{
		    			ForgotPassword frgtpswd=new ForgotPassword();
		    	    	if(frgtpswd.sendMail(email,users.getPassword()))
		    	    		return new ModelAndView("login","sucess","Please check your mail for password");
		    		}		
		    	}
	    	}
    	}
    	catch(Exception e)
    	{
    		return new ModelAndView("login","error","User does not exists");
    	}  
    	return new ModelAndView("login","error","User does not exists");
    }
    
    @RequestMapping(value = "/valid")
    public  @ResponseBody ModelAndView login(HttpSession session,@RequestBody @ModelAttribute("userForm")Users users)
    {
     System.out.println("email: "+users.getEmail_id());
     System.out.println("password: "+users.getPassword());
     System.out.println("activation:  "+users.getActivation());
     int flag=userServices.checklogin(users);
     if(flag==3)
     {
    	 session.setAttribute("EMAIL","admin");
    	 ModelAndView view = new ModelAndView("adminHome");
         return view;
     }
     else if(flag==1)
     {
    	 session.setAttribute("EMAIL",users.getEmail_id());
	     System.out.println("Home...."+users.getEmail_id()+"  "+users.getPassword());
	     ModelAndView view = new ModelAndView("userHome");
	        return view;
     }
     else if(flag==2)
     {
    	  session.setAttribute("EMAIL",users.getEmail_id());
	      System.out.println("Login....12  "+users.getEmail_id()+"  "+users.getPassword());
	      ModelAndView view = new ModelAndView("updateProfile");
	        return view;
     }
     else
     {
    	 ModelAndView view = new ModelAndView("login");
         return view;
     }
     
    }
    
    
    @RequestMapping(value = "/checkUrls")
    public  @ResponseBody ModelAndView logins(HttpSession session,@RequestParam("email")String email)
    {
    	System.out.println("i am in checkURILs");
		return new ModelAndView("adminHome");
     
     
    }
    
    
    //setActivation
    @RequestMapping(value = "/setActivation", method = RequestMethod.GET)
    public ModelAndView setActivation(@RequestParam String email) 
    {
    	System.out.println("i am in activation");
    	try
    	{
    		System.out.println("i am in try");
	    	List<Users> list = userServices.list();
	    	if(list!=null)
	    	{
	    		System.out.println("i am in list");
	    		for (Users users : list)
		    	{
		    		System.out.println(users.getEmail_id()+"  "+email);
		    		if(users.getEmail_id().equals(email))
		    		{
		    			users.setActivation(1);
		    			userServices.saveOrUpdate(users);
		    		}
		    	}
	    	}
    	}
    	catch(Exception e)
    	{
    		System.out.println("I am in catch of setActivation");
    	}
    	
        ModelAndView view = new ModelAndView("Home");
        return view;
    }
    
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home()
    {
        ModelAndView view = new ModelAndView("userHome");
        return view;
    }
    
    @RequestMapping(value = "/adminhome", method = RequestMethod.GET)
    public ModelAndView adminhome()
    {
        ModelAndView view = new ModelAndView("adminHome");
        return view;
    }
    
    @RequestMapping(value = "/viewProfile", method = RequestMethod.GET)
    public ModelAndView viewPage() {
        ModelAndView view = new ModelAndView("viewProfile");
        return view;
    }
    
    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public ModelAndView updatePage() {
    	System.out.println("update page");
        ModelAndView view = new ModelAndView("updateProfile");
        return view;
    }
    
    @RequestMapping(value = "/MessagesToEmails", method = RequestMethod.GET)
    public ModelAndView MessagesToEmails() {
    	System.out.println("update page");
        ModelAndView view = new ModelAndView("MessagesToEmails");
        return view;
    }
    
    @RequestMapping(value = "/editProfile", method = RequestMethod.GET)
    public ModelAndView editPage() {
        ModelAndView view = new ModelAndView("editProfile");
        return view;
    }
    
    @RequestMapping(value = "/WalkinDates", method = RequestMethod.GET)
    public ModelAndView walkdates() 
    {
     System.out.println("I am in walkdates");
     List<WalkInDates> list = walkindatesServices.list();
        ModelAndView model = new ModelAndView("WalkinDates");
        model.addObject("lists", list);
        return model;
    }
    
    
    @RequestMapping(value = "/gat", method = RequestMethod.GET)
    public ModelAndView gat() {
        ModelAndView view = new ModelAndView("gat");
        return view;
    }
    
    @RequestMapping(value = "/gre", method = RequestMethod.GET)
    public ModelAndView gre() {
        ModelAndView view = new ModelAndView("gre");
        return view;
    }
    
    @RequestMapping(value = "/walkin", method = RequestMethod.GET)
    public ModelAndView walk_in(HttpSession session, WalkInApplication wak) {
     List<WalkInApplication> list = walkinServices.list();
     String mail = session.getAttribute("EMAIL").toString();
     for (int i = 0; i < list.size(); i++)
  {
      if(mail.equals(list.get(i).getEmail_id()))
      {
       wak=list.get(i);
      }
  }
     session.setAttribute("firstdate",wak.getDate());
        ModelAndView view = new ModelAndView("walkin");
        return view;
    }
    
    @RequestMapping(value = "/payment", method = RequestMethod.GET)
    public ModelAndView payment() {
        ModelAndView view = new ModelAndView("payment");
        return view;
    }
    
    @RequestMapping(value = "/payment_online", method = RequestMethod.GET)
    public ModelAndView payment_online() {
        ModelAndView view = new ModelAndView("payment_online");
        return view;
    }
    
    @RequestMapping(value = "/PaymentOnline", method = RequestMethod.GET)
    public ModelAndView PaymentOnline() {
        ModelAndView view = new ModelAndView("PaymentOnline");
        return view;
    }
    
    @RequestMapping(value = "/payment_dd", method = RequestMethod.GET)
    public ModelAndView payment_dd() {
        ModelAndView view = new ModelAndView("payment_dd");
        return view;
    }
    
    @RequestMapping(value = "/paymentsucessful", method = RequestMethod.GET)
    public ModelAndView paymentsucessful() {
        ModelAndView view = new ModelAndView("paymentsucessful");
        return view;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session) 
    {
    	session.invalidate();
    	return new ModelAndView("login","sucess","User sucessfully logged out");
    }
    
    @RequestMapping(value = "/adminlogout", method = RequestMethod.GET)
    public ModelAndView adminlogout(HttpSession session) 
    {
    	session.invalidate();
    	return new ModelAndView("login","sucess","Admin sucessfully logged out");
    }
    
    
    @RequestMapping(value = "/registeredStudents", method = RequestMethod.GET)
    public ModelAndView registeredStudent() {
        ModelAndView view = new ModelAndView("registeredStudents");
        return view;
    }
    
    @RequestMapping(value = "/gatApplicants", method = RequestMethod.GET)
    public ModelAndView gatApplicants()
    {
        ModelAndView view = new ModelAndView("gatApplicants");
        return view;
    }
    
    @RequestMapping(value = "/greApplicants", method = RequestMethod.GET)
    public ModelAndView greApplicants(){
        ModelAndView view = new ModelAndView("greApplicants");
        return view;
    }
    
    @RequestMapping(value = "/walkinApplicants", method = RequestMethod.GET)
    public ModelAndView walkinApplicants(){
        ModelAndView view = new ModelAndView("walkinApplicants");
        return view;
    }
   
    @RequestMapping(value = "/dDVerification", method = RequestMethod.GET)
    public ModelAndView dDVerification(){
        ModelAndView view = new ModelAndView("dDVerification");
        return view;
    }
    
    @RequestMapping(value = "/PaymentThroughDD", method = RequestMethod.GET)
    public ModelAndView PaymentThroughDD() {
        ModelAndView view = new ModelAndView("PaymentThroughDD");
        return view;
    }
    
    @RequestMapping(value = "/examDetails", method = RequestMethod.GET)
    public ModelAndView examDetails(){
        ModelAndView view = new ModelAndView("examDetails");
        return view;
    }
    
    @RequestMapping(value = "/generateHallticket", method = RequestMethod.GET)
    public ModelAndView generateHallticket(){
        ModelAndView view = new ModelAndView("generateHallticket");
        return view;
    }
    
    @RequestMapping(value = "/hallticket", method = RequestMethod.GET)
    public ModelAndView hallticket(){
        ModelAndView view = new ModelAndView("hallticket");
        return view;
    }
    
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> getAll(Users users) {
        Map<String, Object> map = new HashMap<String, Object>();
        
        List<Users> list = userServices.list();
        
        if (list != null) 
        {
            map.put("status", "200");
            map.put("message", "Data found");
            map.put("data", list);
        }
        else 
        {
            map.put("status", "404");
            map.put("message", "Data not found");
        }
        return map;
    }
 
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public @ResponseBody Map<String, Object> delete(Users users) {
        Map<String, Object> map = new HashMap<String, Object>();
 
        if (userServices.delete(users)) {
            map.put("status", "200");
            map.put("message", "Your record have been deleted successfully");
        }
        return map;
    }
    
    
    @RequestMapping(value = "/web",method = RequestMethod.POST )
	
    public @ResponseBody ModelAndView getSaved(@RequestParam("apno_list")String appList,
    		@RequestParam("email")String email_id,
    		@RequestParam("amt")String amt,
    		
    		PaymentOnline pay)
    {
	 String termsncond="1";
	 System.out.println("********************");
	 
	 if(termsncond != null){
		    //checkbox not checked
		 pay.setEmail_id(email_id);
		    pay.setApplication_no(appList);
		    pay.setAmount(amt);
		    
		    System.out.println("pay");
		        if (payments.saveOrUpdate(pay)) 
		        {
		        	System.out.println("online");
		        	ModelAndView view = new ModelAndView("payment_online");
		 	        return view;
		        }
		        
		}
        return null;
    }
    
}