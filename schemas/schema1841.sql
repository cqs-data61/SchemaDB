DROP DATABASE IF EXISTS "schema1841";
CREATE DATABASE "schema1841";
USE "schema1841";
CREATE TABLE "titles" (
	"title_id" TEXT,
	"title" TEXT,
	 PRIMARY KEY ("title_id")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" TEXT,
	"birth_date" DATE,
	"first_name" TEXT,
	"last_name" TEXT,
	"sex" TEXT,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" TEXT,
	"emp_no" INT
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" TEXT
);

CREATE TABLE "departments" (
	"dept_no" TEXT,
	"dept_name" TEXT,
	 PRIMARY KEY ("dept_no")
);
