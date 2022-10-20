package com.cts.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="postjobs")
public class Postjob {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int jobid;
	private String companyname;
	private String jobdescription;
	private String jobskills;
	private int jobexp;
	private String jobqual;
	private String jobtype;
	private double jobsal;
	private String jobloc;
	private String contactno;
	private String category;
	
	public Postjob() {
		
	}
	
	
	public Postjob(String companyname, String jobdescription, String jobskills, int jobexp, String jobqual,
			String jobtype, double jobsal,String jobloc, String contactno, String category) {
		super();
		this.companyname = companyname;
		this.jobdescription = jobdescription;
		this.jobskills = jobskills;
		this.jobexp = jobexp;
		this.jobqual = jobqual;
		this.jobtype = jobtype;
		this.jobsal = jobsal;
		this.jobloc = jobloc;
		this.contactno = contactno;
		this.category = category;
		
	}
	


	public int getJobid() {
		return jobid;
	}
	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getJobdescription() {
		return jobdescription;
	}
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}
	public String getJobskills() {
		return jobskills;
	}
	public void setJobskills(String jobskills) {
		this.jobskills = jobskills;
	}
	public int getJobexp() {
		return jobexp;
	}
	public void setJobexp(int  jobexp) {
		this.jobexp = jobexp;
	}
	public String getJobqual() {
		return jobqual;
	}
	public void setJobqual(String jobqual) {
		this.jobqual = jobqual;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public double getJobsal() {
		return jobsal;
	}
	public void setJobsal(double jobsal) {
		this.jobsal = jobsal;
	}
	
    public String getJobloc() {
		return jobloc;
	}


	public void setJobloc(String jobloc) {
		this.jobloc = jobloc;
	}


	public String getContactno() {
		return contactno;
	}


	public void setContactno(String contactno) {
		this.contactno = contactno;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "Postjob [jobid=" + jobid + ", companyname=" + companyname + ", jobdescription=" + jobdescription
				+ ", jobskills=" + jobskills + ", jobexp=" + jobexp + ", jobqual=" + jobqual + ", jobtype=" + jobtype
				+ ", jobsal=" + jobsal + ", jobloc=" + jobloc + ", contactno=" + contactno + ", category=" + category
				+ "]";
	}
	
	
	

}
