package com.job.portal.seeker.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.JobApplication;
import com.job.portal.seeker.model.Login;
import com.job.portal.seeker.model.User;

/**
 * RegisterUserDao is a interface that have abstract methods 
 * to be implemented RegisterUserDaoImpl class
 * 
 * @author subhashree
 */
public interface RegisterUserDao {

	void register(User user);
	Optional<User> validateUser(Login login);
	List<Job> getAllJobs();
	void applyJob(JobApplication application);
	List<HashMap<String, String>> getAppliedJobs(String name);
}
