package com.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.ExamDetails;

import com.services.ExamServices;

@Controller
@RequestMapping("examdetails")
public class ExamDetailsController 
{
	@Autowired
    ExamServices exam;
	
	 @RequestMapping(value = "/reg", method = RequestMethod.GET)
	    public ModelAndView registration() 
	    {
	        ModelAndView view = new ModelAndView("updateProfile");
	        return view;
	    }
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody Map<String, Object> getSaved(HttpServletRequest request,@RequestBody @ModelAttribute("details")ExamDetails examdetails)
	    {
	    
	        Map<String, Object> map = new HashMap<String, Object>();
	 
	        if (exam.saveOrUpdate(examdetails)) 
	        {
	            map.put("status", "200");
	            map.put("message", "Your record have been saved successfully");
	        }
	        return map;
	    }
}
