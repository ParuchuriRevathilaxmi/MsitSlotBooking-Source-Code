package com.controllers;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.entities.DashHome;
import com.services.HomeServices;
import com.services.UsersService;

@Controller
@RequestMapping("dashboard")
public class HomeController {

	@Autowired
	HomeServices homeServices;
	@Autowired
	UsersService usersService;

	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public ModelAndView registration() {
		ModelAndView view = new ModelAndView("updateProfile");
		return view;
	}

	@RequestMapping(value = "/saveOrUpdate", method = RequestMethod.POST)
	public @ResponseBody ModelAndView getSaved(HttpServletRequest request, DashHome users) {
		System.out.println(users.getEmail_id() + "   I am in Home controller saveOrUpdate");

		System.out.println(homeServices.saveOrUpdate(users));
		ModelAndView view = new ModelAndView("Home");
		return view;
	}

	// edit profile
	@RequestMapping(value = "/editProfile", method = RequestMethod.POST)
	public @ResponseBody ModelAndView editProfile(@RequestParam("p1") String user_name,
			@RequestParam("p2") String parent, @RequestParam("p3") String email_id,
			@RequestParam("p4") String nationality, @RequestParam("p6") String dateOfBirth,
			@RequestParam("p7") String mobile, @RequestParam("p8") String Btech, @RequestParam("p9") String address,
			@RequestParam("p5") String gender) {
		System.out.println("  I am in setPwsd ");

		DashHome dashHome = new DashHome();
		dashHome.setAddress(address);
		dashHome.setBtech(Btech);
		dashHome.setDateOfBirth(dateOfBirth);
		dashHome.setEmail_id(email_id);
		dashHome.setGender(gender);
		dashHome.setMobile(mobile);
		dashHome.setNationality(nationality);
		dashHome.setParent(parent);
		dashHome.setUser_name(user_name);

		homeServices.saveOrUpdate(dashHome);

		return new ModelAndView(new RedirectView("../users/setActivation?email=" + email_id + "", true));
	}

	// update profile
	@RequestMapping(value = "/updateProfile")
	public @ResponseBody ModelAndView updateProfile(@RequestParam("p1") String user_name,
			@RequestParam("p2") String parent, @RequestParam("p3") String email_id,
			@RequestParam("p4") String nationality, @RequestParam("p6") String dateOfBirth,
			@RequestParam("p7") String mobile, @RequestParam("p8") String Btech, @RequestParam("p9") String address,
			@RequestParam("p5") String gender) {
		System.out.println("  I am in update profile ");
		List<DashHome> list = homeServices.list();
		for (DashHome dashHome : list) {
			if (dashHome.getEmail_id().equals(email_id)) {
				dashHome.setAddress(address);
				dashHome.setBtech(Btech);
				dashHome.setDateOfBirth(dateOfBirth);
				dashHome.setEmail_id(email_id);
				dashHome.setGender(gender);
				dashHome.setMobile(mobile);
				dashHome.setNationality(nationality);
				dashHome.setParent(parent);
				dashHome.setUser_name(user_name);

				homeServices.saveOrUpdate(dashHome);
			}
		}

		return new ModelAndView(new RedirectView("../users/userHome", true));
	}
}
