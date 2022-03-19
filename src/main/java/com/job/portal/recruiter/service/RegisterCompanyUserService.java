package com.job.portal.recruiter.service;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import com.job.portal.recruiter.model.Company;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.Login;

/**
 * RegisterCompanyUserService is a interface that have abstract methods 
 * to be implemented by RegisterCompanyUserServiceImpl class
 * 
 * @author subhashree
 */
public interface RegisterCompanyUserService {
	
	public void register(Company company);
	public Optional<Company> validateUser(Login login);
	public void addNewJob(Job job);
	public List<Job> getJobs(String company);
	public List<HashMap<String, String>> getJobApplications(String company);
	public void updateJobStatus(String jobId, String company, String post, String name, String status);
	
}
