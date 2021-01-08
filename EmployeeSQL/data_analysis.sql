
CREATE TABLE departments (
 	department_number VARCHAR(10),
  	department_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (department_number)
);

select * from departments


CREATE TABLE employees (
	employee_number INT NOT NULL,
	birthday DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (employee_number)
);

select * from employees

CREATE TABLE dept_emp (
	employee_number INT NOT NULL,
	department_number VARCHAR(10) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
    FOREIGN KEY (employee_number) REFERENCES employees(employee_number),
    FOREIGN KEY (department_number) REFERENCES departments(department_number)
);

select * from dept_emp


CREATE TABLE dept_managers (
 department_number VARCHAR (10),
 employee_number INT,
 from_date DATE NOT NULL,
 to_date DATE NOT NULL,
 FOREIGN KEY (department_number) REFERENCES departments(department_number),
 FOREIGN KEY (employee_number) REFERENCES employees(employee_number)
);

select * from dept_managers


CREATE TABLE salaries (
	employee_number BIGINT NOT NULL,
	salary BIGINT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(employee_number) REFERENCES employees(employee_number)
);

select * from salaries
 

CREATE TABLE titles (
	employee_number INT NOT NULL,
	title VARCHAR(20) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY(employee_number) REFERENCES employees(employee_number)
);

select * from titles