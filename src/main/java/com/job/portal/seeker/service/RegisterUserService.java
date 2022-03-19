package com.job.portal.seeker.service;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.JobApplication;
import com.job.portal.seeker.model.Login;
import com.job.portal.seeker.model.User;

/**
 * RegisterUserService is a interface that have abstract methods 
 * to be implemented by RegisterUserServiceImpl class
 * 
 * @author subhashree
 */
public interface RegisterUserService {
	
	public void register(User user);
	public Optional<User> validateUser(Login login);
	public List<Job> getAllJobs();
	public void applyJob(JobApplication application);
	public List<HashMap<String, String>> getAppliedJobs(String name);

}
