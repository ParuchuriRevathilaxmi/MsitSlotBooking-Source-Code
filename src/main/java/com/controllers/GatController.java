package com.controllers;



import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.GATApplication;
import com.services.GatServices;

@Controller
@RequestMapping("gatapplication")

public class GatController 
{
	 @Autowired
	 GatServices gatServices;
	 public int x=1;
	 
	 @RequestMapping(value = "/reg", method = RequestMethod.GET)
	    public ModelAndView registration() 
	    {
	        ModelAndView view = new ModelAndView("updateProfile");
	        return view;
	    }
	 
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody ModelAndView getSaved(HttpServletRequest request,GATApplication gat )
	    {
		 String appno = GATApplication();
		 List<GATApplication> list = gatServices.list();
		 int flag=0;
		
		 System.out.println("1");
		 if(!gat.getTest_center().equals(""))
		 {
			 System.out.println("2");
			 for (GATApplication gatApplication : list) 
			{
				 System.out.println("3");
				 if (gatApplication.getEmail_id().equals(gat.getEmail_id()))
				{
					 System.out.println("4");
					 gatApplication.setTest_center(gat.getTest_center());
					 gatServices.saveOrUpdate(gatApplication);
					 flag=1;
					 System.out.println("qawsedtghujkl");
					 break;	
				}
			}
			 
			 if(flag==0)
			 {
				 for (int i = 0; i < list.size(); i++) 
				 {
					 System.out.println(appno+"<<----"+list.get(i).getApplication_no());
					if(appno.equals(list.get(i).getApplication_no())){
						System.out.println("next application number");
						appno = GATApplication();
						continue;
					}
					else{
						break;
					}
				}
				 System.out.println("5");
				 gat.setApplication_no(appno);			 
			     gatServices.saveOrUpdate(gat); 
			 }
			System.out.println("6");
			ModelAndView view = new ModelAndView("gat");
			
	   return view;
	        }
		/*ModelAndView view = new ModelAndView("../users/payment_online");*/
			System.out.println("7");
			return null;
	    }
	 
	 public String GATApplication() 
	 {
	  // TODO Auto-generated constructor stub
	  Calendar now = Calendar.getInstance();
	  int year = now.get(Calendar.YEAR);
	  String yearInString = String.valueOf(year);
	  //System.out.println("year = " + yearInString);
	  String shortyr = yearInString.substring(2);  
	  //System.out.println(gid);
	  String gid = "";
	  gid += shortyr;
	  gid += "GAT"; 
	  String number = String.format("%04d", x);
	  gid += number;
	  System.out.println(gid); 
	  //setApplication_no(gid);
	  x++;
	  return gid;
	 }
	 
	 @RequestMapping(value = "/list", method = RequestMethod.POST, headers="Accept=application/json")
     public @ResponseBody Map<String, Object> getAll(GATApplication gat) {
         Map<String, Object> map = new HashMap<String, Object>();
  
         List<GATApplication> list = gatServices.list();
  
         if (list != null) {
             map.put("status", "200");
             map.put("message", "Data found");
             map.put("data", list);
         } else {
             map.put("status", "404");
             map.put("message", "Data not found");
  
         }
         return map;
     }
}
