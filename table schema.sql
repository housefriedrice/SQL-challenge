DROP TABLE IF EXISTS Department CASCADE;

CREATE TABLE Department (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
   PRIMARY KEY (dept_no),
   UNIQUE      (dept_name)
);



DROP TABLE IF EXISTS Employees CASCADE;

CREATE TABLE Employees (
   emp_no INT   NOT NULL,
   birth_date VARCHAR   NOT NULL,
   first_name VARCHAR   NOT NULL,
   last_name VARCHAR   NOT NULL,
   gender VARCHAR   NOT NULL,
   hire_date VARCHAR   NOT NULL,
   PRIMARY KEY (emp_no)
);



DROP TABLE IF EXISTS Department_Employee CASCADE;

CREATE TABLE Department_Employee (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES Employees   (emp_no),
   FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);



DROP TABLE IF EXISTS Department_Manager CASCADE;

CREATE TABLE Department_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
  FOREIGN KEY (emp_no)  REFERENCES Employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES Department (dept_no),
  PRIMARY KEY (emp_no,dept_no)
);


DROP TABLE IF EXISTS Salaries CASCADE;

CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
   PRIMARY KEY (emp_no, from_date)
);




DROP TABLE IF EXISTS Titles CASCADE;

CREATE TABLE Titles (
    emp_no INT   NOT NULL,
    title VARCHAR   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
   FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
   PRIMARY KEY (emp_no,title, from_date)
);












