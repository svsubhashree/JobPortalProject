package com.job.portal.seeker.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.job.portal.recruiter.mapper.JobMapper;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.JobApplication;
import com.job.portal.seeker.model.Login;
import com.job.portal.seeker.model.User;

/**
 * RegisterUserDaoImpl implements RegisterUserDao and its abstract methods
 * 
 * @author subhashree
 */
public class RegisterUserDaoImpl implements RegisterUserDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	/**
	 * register is used to register new user
	 * @param user model class
	 */
	@Override
	public void register(User user) {
		String sql = "Insert into users Values(?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {user.getEmail(),user.getFirstname(),
				user.getLastname(),user.getDesiredusername(),user.getPassword(),user.getGender(),
				user.getTotalexp(),user.getJobprefer(),user.getKeyskills()});
	}

	/**
	 * validateUser is used to validate employee login details
	 * @param login model class
	 * @return Optional class of User model
	 */ 
	@Override
	public Optional<User> validateUser(Login login) {
		String sql = "Select * from users where email = '"+login.getEmail()+
				"' and password = '"+login.getPassword()+"'";
		List<User> users = jdbcTemplate.query(sql, new UserMapper());
		if(users.size() > 0) {			
			return Optional.ofNullable(users.get(0)) ;
		} else {
			return Optional.empty();
		}
	}

	/**
	 * getAllJobs is used to fetch list of jobs posted by all the companies
	 * @return a list of Job model class
	 */
	@Override
	public List<Job> getAllJobs() {
		String sql = "Select * from jobs";
		List<Job> jobsList = jdbcTemplate.query(sql, new JobMapper());
		return jobsList;
	}

	/**
	 * applyJob is used to apply for the jobs posted by the company
	 * @param jobapplication model class
	 */
	@Override
	public void applyJob(JobApplication application) {
		String sql = "Insert into job_applications Values(?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql,new Object[] {application.getJobid(),application.getCompany(),application.getPost(),
				application.getEmail(),application.getName(),application.getContact(),application.getExperience(),
				application.getSkills(),application.getEctc(),application.getAvailability(),"Applied"});
	}

	/**
	 * getAppliedJobs is used to fetch list of all applied jobs by the user
	 * @param name
	 * @return list of map objects
	 */
	@Override
	public List<HashMap<String, String>> getAppliedJobs(String name) {
		String sql = "Select ja.company, ja.post,j.location,j.salary,j.contact,j.interviewdate,"
				+ "j.interviewtime,j.interviewplace,ja.application_status From jobs j "
				+ "Join job_applications ja On j.jobId = ja.job_id "
				+ "And j.company = ja.company Where ja.name = '"+name+"'";
		List<HashMap<String, String>> jobstatusList = jdbcTemplate.query(sql,new ListMapper());
		return jobstatusList;
	}
}

/**
 * UserMapper,a inner class implements RowMapper and used to map the rowset values 
 * into User model class
 * 
 * @author subhashree
 */
class UserMapper implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rowset, int arg1) throws SQLException {
		User user = new User();
		user.setDesiredusername(rowset.getString("desiredusername"));
		user.setPassword(rowset.getString("password"));
		return user;
	}
}

/**
 * ListMapper,a inner class implements RowMapper and used to map the rowset values
 * into a map of string objects
 * 
 * @author subhashree
 */
class ListMapper implements RowMapper<HashMap<String, String>>{

	@Override
	public HashMap<String, String> mapRow(ResultSet rowset, int arg1) throws SQLException {
		HashMap<String, String> appliedJobsMap = new HashMap<>();
		appliedJobsMap.put("company",rowset.getString("company"));
		appliedJobsMap.put("post",rowset.getString("post"));
		appliedJobsMap.put("location",rowset.getString("location"));
		appliedJobsMap.put("salary",rowset.getString("salary"));
		appliedJobsMap.put("contact",rowset.getString("contact"));
		appliedJobsMap.put("interviewdate",rowset.getString("interviewdate"));
		appliedJobsMap.put("interviewtime",rowset.getString("interviewtime"));
		appliedJobsMap.put("interviewplace",rowset.getString("interviewplace"));
		appliedJobsMap.put("applicationStatus",rowset.getString("application_status"));
		return appliedJobsMap;
	}
}