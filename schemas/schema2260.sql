DROP DATABASE IF EXISTS "schema2260";
CREATE DATABASE "schema2260";
USE "schema2260";
CREATE TABLE "titles" (
	"title_id" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "salaries" (
	"emp_no" INTEGER,
	"salary" INTEGER
);

CREATE TABLE "employees" (
	"emp_no" INTEGER,
	"emp_title_id" VARCHAR,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"hire_date" DATE,
	 CONSTRAINT "fk_employees_emp_no" FOREIGN KEY ("emp_no") REFERENCES "salaries" ("emp_no"),
	 CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY ("emp_title_id") REFERENCES "titles" ("title_id")
);

CREATE TABLE "dept_manager" (
	"dept_no" VARCHAR,
	"emp_no" INTEGER,
	 PRIMARY KEY ("dept_no","emp_no"),
	 CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 CONSTRAINT "fk_departments_dept_no" FOREIGN KEY ("dept_no") REFERENCES "dept_manager" ("dept_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INTEGER,
	"dept_no" VARCHAR,
	 CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
