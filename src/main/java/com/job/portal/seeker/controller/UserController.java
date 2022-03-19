package com.job.portal.seeker.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.job.portal.seeker.model.JobApplication;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.Login;
import com.job.portal.seeker.model.User;
import com.job.portal.seeker.service.RegisterUserService;

/**
 * UserController acts as a front controller for all employee/job seeker related operations 
 * 
 * @author subhashree
 */
@RestController
public class UserController {
	
	@Autowired
	RegisterUserService userService;
	/**
	 * addUser is used to register new employee
	 * @param user model class
	 * @return modelview
	 */
	@PostMapping("/registerUser")
	public ModelAndView addUser(@ModelAttribute("user") User user) {
		userService.register(user);
		ModelAndView modelview = new ModelAndView("Response.jsp");
		modelview.addObject("response", "User Registered successfully"+ "\n WELCOME " +user.getFirstname().toUpperCase()+"!");
		return modelview;
	}
	
	/**
	 * validateUser is used to validate employee login details
	 * @param login model class
	 * @return modelview
	 */
	@GetMapping("/validateUser")
	public ModelAndView validateUser(@ModelAttribute("login") Login login) {
		Optional<User> user = userService.validateUser(login);
		ModelAndView modelview;
		if(user.isPresent()) {
			String username = login.getEmail().substring(0, login.getEmail().length() - 10).toUpperCase(); 
			modelview = new ModelAndView("ApplicantPage.jsp");
			modelview.addObject("username", username);
			return modelview;
		} else {
			modelview = new ModelAndView("Response.jsp");
			modelview.addObject("response", "Invalid User. Please put in the correct credentials");
			return modelview;
		}
	}
	
	/**
	 * getAllJobs is used to fetch list of jobs posted by all the companies
	 * @return modelview
	 */
	@GetMapping("/getAllJobs")
	public ModelAndView getAllJobs() {
		List<Job> allJobsList = userService.getAllJobs();
		ModelAndView modelview = new ModelAndView("ViewAllJobs.jsp");
		modelview.addObject("allJobsList",allJobsList);
		return modelview;
	}
	
	/**
	 * applyJob is used to apply for the jobs posted by the company
	 * @param jobapplication model class
	 * @return modelview
	 */
	@PostMapping("/applyJob")
	public ModelAndView applyJob(@ModelAttribute("application") JobApplication application) {
		String employee = application.getName();
		userService.applyJob(application);
		ModelAndView modelview = new ModelAndView("ApplicantPage.jsp");
		modelview.addObject("message","Job application submitted ! Please click on 'Job Application Status'");
		modelview.addObject("username", employee);
		return modelview;
	}
	
	/**
	 * getAppliedJobs is used to fetch list of all applied jobs by the user
	 * @param username
	 * @return modelview
	 */
	@GetMapping("/getAppliedJobs")
	public ModelAndView getAppliedJobs(@RequestParam("username") String username) {
		List<HashMap<String, String>> appliedJobsList = userService.getAppliedJobs(username);
		ModelAndView modelview = new ModelAndView("ViewAppliedJobs.jsp");
		modelview.addObject("appliedJobsList",appliedJobsList);
		return modelview;
	}
}
