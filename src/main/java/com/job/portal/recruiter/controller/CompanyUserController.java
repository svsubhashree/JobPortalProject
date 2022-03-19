package com.job.portal.recruiter.controller;

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

import com.job.portal.recruiter.model.Company;
import com.job.portal.recruiter.model.Job;
import com.job.portal.recruiter.service.RegisterCompanyUserService;
import com.job.portal.seeker.model.Login;

/**
 * CompanyUserController acts as a front controller for all company/ related operations 
 * @author subhashree
 */
@RestController
public class CompanyUserController {
	
	@Autowired
	RegisterCompanyUserService companyUserService;
	
	/**
	 * addCompany is used to register a new company
	 * @param company model class
	 * @return modelview
	 */
	@PostMapping("/registerCompanyUser")
	public ModelAndView addCompany(@ModelAttribute("company") Company company) {
		companyUserService.register(company);
		ModelAndView modelview = new ModelAndView("Response.jsp");
		modelview.addObject("response", "Company Registered successfully !!"+ " WELCOME " +company.getCompanyname().toUpperCase()+"!");
		return modelview;
	}
	
	/**
	 * validateUser is used to validate company login details
	 * @param login model class
	 * @return modelview
	 */ 
	@GetMapping("/validateCompany")
	public ModelAndView validateUser(@ModelAttribute("login") Login login) {
		Optional<Company> company = companyUserService.validateUser(login);
		ModelAndView modelview;
		if(company.isPresent()) {
			String username = login.getEmail().substring(0, login.getEmail().length() - 10).toUpperCase(); 
			modelview = new ModelAndView("CompanyHomePage.jsp");
			modelview.addObject("username", username);
			return modelview;
		} else {
			modelview = new ModelAndView("Response.jsp");
			modelview.addObject("response", "Invalid credentials or Company not registered yet. Please sign up to register !");
			return modelview;
		}
	}
	
	/**
	 * addJob is used to post a new job 
	 * @param job model class
	 * @return modelview
	 */
	@PostMapping("/addJob")
	public ModelAndView addJob(@ModelAttribute("job") Job job) {
		String company = job.getCompany();
		companyUserService.addNewJob(job);
		ModelAndView modelview = new ModelAndView("CompanyHomePage.jsp");
		modelview.addObject("message","Job added successfully ! Please click on 'Jobs' tab to view all the jobs");
		modelview.addObject("username",company);
		return modelview;
	}
	
	/**
	 * getJobs is used to fetch list of jobs added by the company
	 * @param company name
	 * @return modelview
	 */
	@GetMapping("/getJobs")
	public ModelAndView getJobs(@RequestParam("company") String company) {
		List<Job> jobsList = companyUserService.getJobs(company);
		ModelAndView modelview = new ModelAndView("ViewAddedJobs.jsp");
		modelview.addObject("jobsList",jobsList);
		return modelview;
	}
	
	/**
	 * getJobApplications is used to view the job applications received from employee 
	 * @param company name
	 * @return modelview
	 */
	@GetMapping("/getJobApplications")
	public ModelAndView getJobApplications(@RequestParam("company") String company) {
		List<HashMap<String, String>> applicationsList = companyUserService.getJobApplications(company);
		ModelAndView modelview = new ModelAndView("ViewApplications.jsp");
		modelview.addObject("applicationsList",applicationsList);
		return modelview;
	}
	
	/**
	 * updateJobStatus is used to approve/reject the job application
	 * @param jobId
	 * @param company
	 * @param post
	 * @param name
	 * @param status
	 * @return modelview
	 */
	@GetMapping("/updateJobStatus")
	public ModelAndView updateJobStatus(@RequestParam("jobid")String jobId, @RequestParam("company") String company,
			@RequestParam("post") String post,@RequestParam("name")String name,@RequestParam("status") String status) {
		companyUserService.updateJobStatus(jobId,company,post,name,status);
		ModelAndView modelview = new ModelAndView("ViewApplications.jsp");
		modelview.addObject("message","Job Application "+status);
		return modelview;
	}
}
