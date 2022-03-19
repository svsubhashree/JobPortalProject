package com.job.portal.recruiter.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.job.portal.recruiter.model.Job;

/**
 * JobMapper implements RowMapper and used to map the rowset values 
 * into Job model class
 * 
 * @author subhashree
 */
public class JobMapper implements RowMapper<Job> {

	@Override
	public Job mapRow(ResultSet rowset, int arg1) throws SQLException {
		Job job = new Job();
		job.setJobId(rowset.getInt("jobId"));
		job.setCompany(rowset.getString("company"));
		job.setLocation(rowset.getString("location"));
		job.setFunctionalarea(rowset.getString("functionalarea"));
		job.setPost(rowset.getString("post"));
		job.setExperience(rowset.getString("experience"));
		job.setContact(rowset.getString("contact"));
		job.setVacancy(rowset.getString("vacancy"));
		job.setSkills(rowset.getString("skills"));
		job.setSalary(rowset.getString("salary"));
		job.setInterviewdate(rowset.getString("interviewdate"));
		job.setInterviewtime(rowset.getString("interviewtime"));
		job.setInterviewplace(rowset.getString("interviewplace"));
		return job;
	}
}