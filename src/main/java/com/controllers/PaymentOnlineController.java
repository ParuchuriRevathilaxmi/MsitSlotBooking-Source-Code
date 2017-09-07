package com.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.entities.PaymentOnline;
import com.services.PaymentsOnlineService;

@Controller
@RequestMapping("paymentsonline")
public class PaymentOnlineController {

	@Autowired
	PaymentsOnlineService payments;
	
	 @RequestMapping(value = "/onlinepayment", method = RequestMethod.POST)
	    public ModelAndView onlinepayment(HttpServletRequest request)
	 	{
		 	ModelAndView view = null ;
		 	
		 	String payment=request.getParameter("p1");
		 
		 	if(payment.equals("1"))
		 	{
		 		System.out.println("'''''''''''''''''''''");
		 		view=new ModelAndView("web");
		 	}
		 	
		 	if(payment.equals("2"))
		 	{
		 		System.out.println(",,,,,,,,,,,,,,,,,,,,,,,,,,");
		 		view=new 	ModelAndView("payment_dd");
		 	}
		 	
		 	if(payment.equals("3"))
		 	{
		 		System.out.println("+++++++++++++++++++++++++++++++++");	
		 		view=new ModelAndView("userHome");
		 	}
			return view;
	       
	    }
	
}
