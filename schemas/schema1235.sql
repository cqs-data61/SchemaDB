DROP DATABASE IF EXISTS "schema1235";
CREATE DATABASE "schema1235";
USE "schema1235";
CREATE TABLE "titles" (
	"title_id" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT
);

CREATE TABLE "employees" (
	"emp_no" INT,
	"emp_title_id" VARCHAR,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"hire_date" DATE
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INT
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR
);
