package com.job.portal.seeker.service;

import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.dao.RegisterUserDao;
import com.job.portal.seeker.model.JobApplication;
import com.job.portal.seeker.model.Login;
import com.job.portal.seeker.model.User;

/**
 * RegisterUserServiceImpl implements RegisterUserService and its abstract methods
 * 
 * @author subhashree
 */
public class RegisterUserServiceImpl implements RegisterUserService {

	@Autowired
	RegisterUserDao userDao;
	
	@Override
	public void register(User user) {
		userDao.register(user);
	}

	@Override
	public Optional<User> validateUser(Login login) {
		return userDao.validateUser(login);
	}

	@Override
	public List<Job> getAllJobs() {
		return userDao.getAllJobs();
	}

	@Override
	public void applyJob(JobApplication application) {
		userDao.applyJob(application);
	}


	@Override
	public List<HashMap<String, String>> getAppliedJobs(String name) {
		return userDao.getAppliedJobs(name);
	}

}
