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

import com.entities.GREApplication;
import com.services.GreServices;


@Controller
@RequestMapping("greapplication")
public class GreController 
{
	 @Autowired
	 GreServices greServices;
	 
	 public int x=1;
	
	 @RequestMapping(value = "/reg", method = RequestMethod.GET)
	    public ModelAndView registration() 
	    {
	        ModelAndView view = new ModelAndView("updateProfile");
	        return view;
	    }
	 
	 @RequestMapping(value = "/list", method = RequestMethod.POST, headers="Accept=application/json")
     public @ResponseBody Map<String, Object> getAll(GREApplication gre) {
         Map<String, Object> map = new HashMap<String, Object>();
  
         List<GREApplication> list = greServices.list();
  
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
	 
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody ModelAndView getSaved( HttpServletRequest request,GREApplication gre )
	    {
		 
		 String appno = GREApplication();
		 List<GREApplication> list = greServices.list();
		 int flag=0;
		 
		 //not take gre score as empty
		 for (GREApplication greApplication : list)
		 {
			 if(greApplication.getEmail_id().equals(gre.getEmail_id()))
			 {
				 greApplication.setGre_vq(gre.getGre_vq());
				 greApplication.setGre_an(gre.getGre_an());
				 flag=1;
				 greServices.saveOrUpdate(greApplication);
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
					appno = GREApplication();
					continue;
				}
				else{
					break;
				}
			 }
		
		 gre.setApplication_no(appno);
	        if (greServices.saveOrUpdate(gre)) 
	        {
	           System.out.println("gre success");
	           
	        }
		 }
	        ModelAndView view = new ModelAndView("gre");
	        return view;
	        }
	 
	 public String GREApplication() 
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
	  gid += "GRE"; 
	  String number = String.format("%04d", x);
	  gid += number;
	  System.out.println(gid); 
	  //setApplication_no(gid);
	  x++;
	  return gid;
	 }
}
