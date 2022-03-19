package com.job.portal.seeker.model;

/**
 * JobApplication pojo class refers to job_applications entity
 * 
 * @author subhashree
 */
public class JobApplication {
	
	private int jobid;
	private String company;
	private String post;
	private String email;
	private String name;
	private String contact;
	private String experience;
	private String skills;
	private String ectc;
	private String availability;
	private String status;
	
	public String getAvailability() {
		return availability;
	}
	public void setAvailability(String availability) {
		this.availability = availability;
	}
	
	public String getEctc() {
		return ectc;
	}
	public void setEctc(String ectc) {
		this.ectc = ectc;
	}
	
	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
