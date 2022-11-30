CREATE TABLE departments (
dept_no VARCHAR(5) PRIMARY KEY,
dept_name VARCHAR(20);

CREATE TABLE employees(
emp_no INTEGER NOT NULL PRIMARY KEY,
emp_title_ID VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL);

CREATE TABLE dept_manager (
dept_no VARCHAR(5) NOT NULL,
emp_no INTEGER NOT NULL)
PRIMARY KEY (dept_no, emp_id);

CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (b, c) REFERENCES other_table (c1, c2));

CREATE TABLE titles (
title_id VARCHAR NOT NULL PRIMARY KEY,
title VARCHAR NOT NULL)
FOREIGN KEY (title_ID) REFERENCES emp_no (emp_title_ID);
	
CREATE TABLE salaries ( 
emp_no INTEGER NOT NULL PRIMARY KEY,
salary INTEGER NOT NULL)
FOREIGN KEY (emp_no) REFERENCES employees(emp_no), dept_manager(emp_no), dept_emp(emp_no);
