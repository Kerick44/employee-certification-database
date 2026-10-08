# Employee Certification Management Database
A relational MySQl database project designed to manage employee records, track professional certifications, monitor expiration dates, and identify employee-supervisor relationships.

# Project Overview
This project demonstrates the design, implementation, and management of relational database using MySQL.

This database was developed to provide a structured alternative to tracking employee certifications through spreadsheets. Employee and certification data were initially created in Microsoft Excel, then imported into MySQL for organized storage, querying, and management. 

This project also involved configuring a MySQL server on Ubuntu Linux, establishing database connections, and performing database operations through MySQL Workbench and the Linux command line.

# Technologies Used
Database: MySQL
Database Management: MySQL Workbench
Operating Systems: Ubuntu Linux, Windows
Languages: SQL, Bash
Data Preparation; Microsoft Excel, CSV
Version Control: Github

# Database Structure
The database consists of three related tables:
1. employees - Stores employee IDs, names, and supervisor relationships
2. certs - Stores certification IDs and certification names
3. employee_certifications - Connects employees to certifications and records completion and expiration dates

The database uses primary keys, foreign keys, and a composite primary key to maintain relationships between records

# SQL Queries and Functionality
1. Employee Certification Tracking - Retrieves employee information, certification names, completion dates, expiration dates, and assigned supervisors using multiple SQL JOIN operations
2. Expired Certification Identification - Identifies expired employee certifications by comparing expiration dates with CURRENT_DATE
3. Employee-Supervisor Relationships - Uses a self-join on the employees table to identify employees and their assigned supervisors

# Database Administration and Configuration
- Installed and configured MySQL on Ubuntu Linux
- Connected MySQL Workbench to database server
- Accessed MySQL through the Linux command line
- Used basic Bash scripting and Linux commands
- Configures database connectivity and troubleshot connection errors
- Imported CSV datasets into relational database tables
- Created a MySQL database backup using export functionality

# Repository Structure
- Backups/ -- MySQL database backup
- Data/-- Original CSV datasets
- SQL/-- SQL queries and database scripts
- README.md -- Project Documentation

# Skills Demonstrated
- Relational Database Design
- SQL Queries
- Primary & Foreign Keys
- Data Import
- JOIN Operations
- Database Troubleshooting
- MySQL Administration Fundamentals
- Linux Command Line
- Technical Documentation

# Future Improvements
- Add SQL queries for certifications approaching expiration
- Develop summary reports showing certification status supervisor
- Expand data validation and error handling
- Explore Python automation for certification reporting

# Project Context
This project was developed independently as hands-on practice while studying Computer Science with a concentration in Data Analytics
