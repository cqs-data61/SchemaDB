DROP DATABASE IF EXISTS "schema1199";
CREATE DATABASE "schema1199";
USE "schema1199";
CREATE TABLE "emp_salary" (
	"employee_no" INT,
	"emp_salary" INT,
	 PRIMARY KEY ("employee_no")
);

CREATE TABLE "dept_emp" (
	"employee_no" INT,
	"department_id" CHAR,
	 PRIMARY KEY ("employee_no","department_id")
);

CREATE TABLE "dept_manager" (
	"department_id" CHAR,
	"employee_no" INT,
	 PRIMARY KEY ("department_id","employee_no")
);

CREATE TABLE "department" (
	"department_id" CHAR,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "employee" (
	"employee_no" INT,
	"employee_title_id" CHAR,
	"date_of_birth" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" ENUM,
	"hire_date" DATE,
	 PRIMARY KEY ("employee_no")
);

CREATE TABLE "title" (
	"title_id" CHAR,
	"title" VARCHAR,
	 PRIMARY KEY ("title_id")
);
