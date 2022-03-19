package com.job.portal.recruiter.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import com.job.portal.recruiter.model.Company;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.Login;

/**
 * RegisterCompanyUserDao is a interface that have abstract methods 
 * to be implemented RegisterCompanyUserDaoImpl class
 * 
 * @author subhashree
 */
public interface RegisterCompanyUserDao {

	void register(Company company);
	Optional<Company> validateUser(Login login);
	void addNewJob(Job job);
	List<Job> getJobs(String company);
	List<HashMap<String, String>> getJobApplications(String company);
	void updateJobStatus(String jobId, String company, String post,String name, String status);

}
