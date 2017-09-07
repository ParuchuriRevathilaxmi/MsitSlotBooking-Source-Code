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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.Payments;
import com.services.PaymentServices;

@Controller
@RequestMapping("payments")
public class PaymentController 
{
	@Autowired
    PaymentServices payments;
	
	 @RequestMapping(value = "/reg", method = RequestMethod.GET)
	    public ModelAndView registration() 
	    {
	        ModelAndView view = new ModelAndView("updateProfile");
	        return view;
	    }
	 @RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	    public @ResponseBody ModelAndView getSaved(@RequestParam("app_list")String appList,
	    		@RequestParam("ddno")String ddno,
	    		@RequestParam("ibn")String ibn,
	    		@RequestParam("bbr")String bbr,
	    		@RequestParam("amt")String amt,
	    		@RequestParam("idt")String idt,
	    		@RequestParam("et")String et,
	    		Payments pay)
	    {
		 
	    pay.setAmount(amt);
	    pay.setApplication_no(appList);
	    pay.setBank_branch(bbr);
	    pay.setBank_name(ibn);
	    pay.setDD_no(ddno);
	    pay.setExam_type(et);
	    pay.setIssue_date(idt);
	    
	 
	        if (payments.saveOrUpdate(pay)) 
	        {
	        	 ModelAndView view = new ModelAndView("payment_dd");
	 	         return view;
	        }
	       
	        return null;
	    }
}
