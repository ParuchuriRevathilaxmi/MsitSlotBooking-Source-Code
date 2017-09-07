package com.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.Users;
import com.entities.WalkInApplication;
import com.entities.WalkInDates;
import com.services.WalkinDatesService;

@Controller
@RequestMapping("walkindates")
public class WalkInDatesController {

	@Autowired
	WalkinDatesService walkindate;
	
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody ModelAndView getSaved(HttpSession session, HttpServletRequest request,
			   	@RequestParam("datepicker")String date,
			   	WalkInDates wak)
	    {		 
		
		 		
					
					wak.setDate(date);
					if (walkindate.saveOrUpdate(wak)) 
					{
						System.out.println("walkindates success");	          

				        List<WalkInDates> list = walkindate.list();
				        ModelAndView model = new ModelAndView("WalkinDates");
						model.addObject("list", list);
						
				        return model;
			}
			return null;
	    
	    }
	
	 @RequestMapping(value="/deletedate",method = RequestMethod.GET)  
	    public ModelAndView delete(@RequestParam("walkdate") String wak, WalkInDates walkdate){ 
		 walkdate.setDate(wak);
		 System.out.println("in delete date   "+wak);
		 walkindate.delete(walkdate);  
		 System.out.println("out delete date");
	        return new ModelAndView("WalkinDates");  
	    } 
	 
}
