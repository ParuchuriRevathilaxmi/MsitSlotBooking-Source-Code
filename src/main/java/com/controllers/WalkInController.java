package com.controllers;

import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.WalkInApplication;
import com.services.WalkInSevices;
import com.sun.corba.se.impl.encoding.CodeSetConversion.CTBConverter;

@Controller
@RequestMapping("walkinapplication")
public class WalkInController 
{
	@Autowired
	WalkInSevices walkinServices;
	public int x = 1;
	 @RequestMapping(value = "/reg", method = RequestMethod.GET)
	    public ModelAndView registration() 
	    {
	        ModelAndView view = new ModelAndView("updateProfile");
	        return view;
	    }
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody ModelAndView getSaved(HttpSession session, HttpServletRequest request,
	    		@RequestParam("tc")String center,
			   	@RequestParam("walk")String exam_type,
			   	@RequestParam("email")String email,
			   	@RequestParam("payment")String payment,
			   	@RequestParam("timeno")String timeno,
			   	@RequestParam("walkindate")String walkindate,
			   	WalkInApplication wak,ModelMap model)
	    {		 
		 	String appno;
		 	int c = 1;
		 	appno = generateWalkinId();
			List<WalkInApplication> list = walkinServices.list();
			
			if(!center.equals(""))
			{
				for (int i = 0; i < list.size(); i++)
				{
					System.out.println(appno+"<<----"+list.get(i).getApplication_no());
					System.out.println("walkin date = " + list.get(i).getDate());
					System.out.println("wcount = " + list.get(i).getWcount());
					int ct = list.get(i).getWcount();
					if (ct > 3) 
					{
						ct = 1;
					}
					else 
					{
						if (email.equals(list.get(i).getEmail_id()))
						{
							ct++;
							c = ct;
							if(ct <= 3)
							{
								wak.setWcount(ct);
							}
						}
					}
				}
				if(c <= 3)
				{
					wak.setApplication_no(appno);
					wak.setTest_center(center);
					wak.setEmail_id(email);
					wak.setPayment_details(payment);
					wak.setSlot(timeno);					
					wak.setDate(walkindate);
					wak.setExam_type(exam_type);
					//session.setAttribute("firstdate",wak.getDate());
					if (walkinServices.saveOrUpdate(wak)) 
					{
						System.out.println("walkin success");	          
					}
				}
				ModelAndView view = new ModelAndView("walk_in");
				return view;
			}
			return null;
	    
	      /*  Map<String, Object> map = new HashMap<String, Object>();
	 
	        if (walkinServices.saveOrUpdate(walkin)) 
	        {
	            map.put("status", "200");
	            map.put("message", "Your record have been saved successfully");
	        }
	        return map;*/
	    }
	 	public String generateWalkinId() 
		{
			// TODO Auto-generated constructor stub		
	 		List<WalkInApplication> list = walkinServices.list();
	 		
	 		if (list.size() == 0)
	 		{
	 			x = 1;
			}
	 		else 
	 		{
	 			for (int i = 0; i < list.size(); i++) 
		 		{
		 			x = list.get(i).getS_no();
		 			x++;
				}
			}	 		
	 		Calendar now = Calendar.getInstance();
			int year = now.get(Calendar.YEAR);
			String yearInString = String.valueOf(year);
			String shortyr = yearInString.substring(2);  
			String wid = "";
			wid += shortyr;
			wid += "WAK"; 
			String number = String.format("%04d", x);
			wid += number;
			System.out.println(wid);
			return wid;
		}
}
