package dao;

import java.util.List;

import entity.Applicant;
import entity.Company;
import entity.JobApplication;
import entity.JobListing;

public interface ICareerHubServices {
	void InsertJobListing(JobListing jobListing);
	void InsertCompany (Company company);
	void InsertApplicant(Applicant applicant);
	void InsertJobApplication(JobApplication jobApplication);
	List<JobListing> GetJobListings();
	List<Company> GetCompanies();
	List<Applicant> GetApplicants();
	List<JobApplication> GetApplicationsForJob (); 
}