DROP DATABASE IF EXISTS "schema460";
CREATE DATABASE "schema460";
USE "schema460";
CREATE TABLE "employees" (
	"emp_no" INT,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" VARCHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
	"emp_no" INT,
	"title" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fkeycon_titles_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "salaries" (
	"emp_no" BIGINT,
	"salary" BIGINT,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" VARCHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_managers" (
	"dept_no" VARCHAR,
	"emp_no" INT,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fkeycon_dept_managers_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	 CONSTRAINT "fkeycon_dept_managers_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "dept_emp" (
	"emp_no" INT,
	"dept_no" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 CONSTRAINT "fkeycon_dept_emp_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_emp_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);
