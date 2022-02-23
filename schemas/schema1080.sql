DROP DATABASE IF EXISTS "schema1080";
CREATE DATABASE "schema1080";
USE "schema1080";
CREATE TABLE "titles" (
	"title_id" VARCHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("title_id")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INT
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" VARCHAR,
	"birth_date" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"hire_date" VARCHAR,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);
