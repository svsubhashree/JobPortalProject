package com.job.portal.recruiter.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.job.portal.recruiter.mapper.JobMapper;
import com.job.portal.recruiter.model.Company;
import com.job.portal.recruiter.model.Job;
import com.job.portal.seeker.model.Login;

/**
 * RegisterCompanyUserDaoImpl implements RegisterCompanyUserDao and its abstract methods
 * 
 * @author subhashree
 */
public class RegisterCompanyUserDaoImpl implements RegisterCompanyUserDao {

	@Autowired
	DataSource datasource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	/**
	 * addCompany is used to register a company
	 * @param Company model class
	 */
	@Override
	public void register(Company company) {
		String sql = "Insert into companies Values(?,?,?,?)";
		jdbcTemplate.update(sql, new Object[] {company.getCompanyname(),company.getEmail(),
				company.getPassword(),company.getWebaddress()});
	}

	/**
	 * validateUser is used to validate recruiter login details
	 * @param login model class
	 * @return Optional class of Company model
	 */ 
	@Override
	public Optional<Company> validateUser(Login login) {
		String sql = "Select * from companies where email = '"+login.getEmail()+
				"' and password = '"+login.getPassword()+"'";
		List<Company> companies = jdbcTemplate.query(sql, new CompanyUserMapper());
		if(companies.size() > 0) {			
			return Optional.ofNullable(companies.get(0)) ;
		} else {
			return Optional.empty();
		}
	}

	/**
	 * addNewJob is used to post a new job 
	 * @param job model class
	 */
	@Override
	public void addNewJob(Job job) {
		String sql = "Insert into jobs Values(default,?,?,?,?,?,?,?,?,?,?,?,?)";
		String company = job.getCompany().replace(",", "");
		jdbcTemplate.update(sql,new Object[] {company,job.getLocation(),
				job.getFunctionalarea(),job.getPost(),job.getExperience(),
				job.getContact(),job.getVacancy(),job.getSkills(),job.getSalary(),
				job.getInterviewdate(),job.getInterviewtime(),job.getInterviewplace()});
	}

	/**
	 * getJobs is used to fetch list of jobs posted by the company
	 * @param company name
	 * @return a list of Job model
	 */
	@Override
	public List<Job> getJobs(String company) {
		String sql = "Select * from jobs where company = '"+company+"'";
		List<Job> jobsList = jdbcTemplate.query(sql, new JobMapper());
		return jobsList;
	}


	/**
	 * getJobApplications is used to view the job applications received 
	 * @param company name
	 * @return a list of map objects
	 */
	@Override
	public List<HashMap<String, String>> getJobApplications(String company) {
		String sql = "Select ja.job_id,ja.company,ja.post,ja.email,ja.contact,ja.name,ja.ectc,ja.availability,"
				+ "ja.totalexp,ja.skills_matched,u.totalexp,u.keyskills,ja.application_status From job_applications ja"
				+ " Join users u On u.email = ja.email And u.firstname = ja.name "
				+ "Where ja.company = '"+company+"'";
		List<HashMap<String, String>> jobApplicationsList = jdbcTemplate.query(sql,new JobApplicationListMapper());
		return jobApplicationsList;
	}

	/**
	 * updateJobStatus is used to approve/reject the job application
	 * @param jobId
	 * @param company
	 * @param post
	 * @param name
	 * @param status
	 */
	@Override
	public void updateJobStatus(String jobId, String company, String post, String name,String status) {
		String sql = "Update job_applications set application_status = '"+status+"' where job_id = "+Integer.valueOf(jobId)+
				" and company = '"+company+"' and post = '"+post+"' and name = '"+name+"'";
		jdbcTemplate.update(sql);
	}

}
/**
 * CompanyUserMapper,a inner class implements RowMapper and used to map the rowset values 
 * into Company model class
 * 
 * @author subhashree
 */
class CompanyUserMapper implements RowMapper<Company>{

	@Override
	public Company mapRow(ResultSet rowset, int arg1) throws SQLException {
		Company company = new Company();
		company.setEmail(rowset.getString("email"));
		company.setPassword(rowset.getString("password"));
		return company;
	}

}
/**
 * JobApplicationListMapper,a inner class implements RowMapper and used to map the rowset values
 * into a map of string objects
 * 
 * @author subhashree
 */
class JobApplicationListMapper implements RowMapper<HashMap<String, String>>{

	@Override
	public HashMap<String, String> mapRow(ResultSet rowset, int arg1) throws SQLException {
		HashMap<String, String> jobapplicationsMap = new HashMap<>();		
		jobapplicationsMap.put("jobid",String.valueOf(rowset.getInt("job_id")));
		jobapplicationsMap.put("company",rowset.getString("company"));
		jobapplicationsMap.put("post",rowset.getString("post"));
		jobapplicationsMap.put("email",rowset.getString("email"));
		jobapplicationsMap.put("contact",rowset.getString("contact"));
		jobapplicationsMap.put("name",rowset.getString("name"));
		jobapplicationsMap.put("expectedctc",rowset.getString("ectc"));
		jobapplicationsMap.put("availability",rowset.getString("availability"));
		jobapplicationsMap.put("relevantexp",rowset.getString("totalexp"));
		jobapplicationsMap.put("skillsmatched",rowset.getString("skills_matched"));
		jobapplicationsMap.put("totalexp",rowset.getString("totalexp"));
		jobapplicationsMap.put("keyskills",rowset.getString("keyskills"));
		jobapplicationsMap.put("applicationstatus",rowset.getString("application_status"));
		return jobapplicationsMap;
	}
}