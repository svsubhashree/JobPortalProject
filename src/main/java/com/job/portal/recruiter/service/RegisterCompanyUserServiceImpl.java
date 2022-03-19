package com.job.portal.recruiter.service;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.job.portal.recruiter.dao.RegisterCompanyUserDao;
import com.job.portal.recruiter.model.Company;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.Login;

/**
 * RegisterCompanyUserServiceImpl implements RegisterCompanyUserService and its abstract methods
 * 
 * @author subhashree
 */
public class RegisterCompanyUserServiceImpl implements RegisterCompanyUserService {

	@Autowired
	RegisterCompanyUserDao companyUserDao;
	
	@Override
	public void register(Company company) {
		companyUserDao.register(company);
	}

	@Override
	public Optional<Company> validateUser(Login login) {
		return companyUserDao.validateUser(login);
	}

	@Override
	public void addNewJob(Job job) {
		companyUserDao.addNewJob(job);
		
	}

	@Override
	public List<Job> getJobs(String company) {
		return companyUserDao.getJobs(company);
		
	}

	@Override
	public List<HashMap<String, String>> getJobApplications(String company) {
		return companyUserDao.getJobApplications(company);
	}

	@Override
	public void updateJobStatus(String jobId, String company, String post,String name,String status) {
		companyUserDao.updateJobStatus(jobId,company,post,name,status);
		
	}

}
