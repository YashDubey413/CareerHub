create database career_hub;
use career_hub;

create table Company (
    CompanyID int primary key,
    CompanyName varchar(255) not null,
    Location varchar(255) not null
);

CREATE TABLE JobListing (
    JobID INT PRIMARY KEY,
    CompanyID INT,
    JobTitle VARCHAR(255) NOT NULL,
    JobDescription TEXT NOT NULL,
    JobLocation VARCHAR(255) NOT NULL,
    Salary INT NOT NULL,
    JobType VARCHAR(50) NOT NULL,
    PostedDate DATE NOT NULL,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE Applicant (
    ApplicantID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Resume TEXT,
    UNIQUE (Email, Phone)
);

CREATE TABLE JobApplication (
    ApplicationID INT PRIMARY KEY,
    JobID INT,
    ApplicantID INT,
    ApplicationDate DATE NOT NULL,
    CoverLetter TEXT NOT NULL,
    FOREIGN KEY (JobID) REFERENCES JobListing(JobID),
    FOREIGN KEY (ApplicantID) REFERENCES Applicant(ApplicantID)
);

-- Inserting values into the Company table
INSERT INTO Company (CompanyID, CompanyName, Location)
VALUES
    (1, 'ABC Technologies', 'Mumbai'),
    (2, 'XYZ Solutions', 'Bangalore'),
    (3, 'PQR Innovations', 'Delhi');

-- Inserting values into the JobListing table
INSERT INTO JobListing (JobID, CompanyID, JobTitle, JobDescription, JobLocation, Salary, JobType, PostedDate)
VALUES
    (1, 1, 'Software Engineer', 'Developing cutting-edge software solutions.', 'Mumbai', 80000, 'Full-time', '2023-12-01'),
    (2, 2, 'Data Scientist', 'Analyzing and interpreting complex data sets.', 'Bangalore', 90000, 'Full-time', '2023-12-02'),
    (3, 3, 'UX Designer', 'Creating user-friendly interfaces for our products.', 'Delhi', 75000, 'Part-time', '2023-12-03');


-- Inserting values into the Applicant table
INSERT INTO Applicant (ApplicantID, FirstName, LastName, Email, Phone, Resume)
VALUES
    (1, 'Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', 'Resume content goes here.'),
    (2, 'Sanya', 'Verma', 'sanya.verma@example.com', '8765432109', 'Resume content goes here.'),
    (3, 'Rahul', 'Gupta', 'rahul.gupta@example.com', '7654321098', 'Resume content goes here.');

-- Inserting values into the JobApplication table
INSERT INTO JobApplication (ApplicationID, JobID, ApplicantID, ApplicationDate, CoverLetter)
VALUES
    (1, 1, 1, '2023-12-04', 'I am excited about the opportunity to contribute to ABC Technologies as a Software Engineer.'),
    (2, 2, 2, '2023-12-05', 'I am passionate about data science and would love to join XYZ Solutions as a Data Scientist.'),
    (3, 3, 3, '2023-12-06', 'I am skilled in UX design and eager to bring my expertise to PQR Innovations.');
