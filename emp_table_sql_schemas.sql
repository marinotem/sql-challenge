CREATE TABLE departments (
dept_no VARCHAR(5) PRIMARY KEY,
dept_name VARCHAR(20));

CREATE TABLE titles (
title_id VARCHAR NOT NULL PRIMARY KEY,
title VARCHAR NOT NULL);

CREATE TABLE employees(
emp_no INTEGER NOT NULL PRIMARY KEY,
emp_title_ID VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_ID) REFERENCES titles (title_ID));

CREATE TABLE dept_manager (
dept_no VARCHAR(5) NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
dept_no VARCHAR(5) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
FOREIGN KEY (emp_no) REFERENCES employees (emp_no));

CREATE TABLE salaries ( 
emp_no INTEGER NOT NULL PRIMARY KEY,
salary INTEGER NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
