DROP DATABASE IF EXISTS "schema1266";
CREATE DATABASE "schema1266";
USE "schema1266";
CREATE TABLE "employees" (
	"emp_no" INT,
	"birth_date" DATE,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" CHAR,
	"hire_date" DATE,
	 PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
	"emp_no" INT,
	"title" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	 PRIMARY KEY ("emp_no","title","from_date"),
	 CONSTRAINT "fkeycon_titles_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	"from_date" DATE,
	"to_date" DATE,
	 PRIMARY KEY ("emp_no","salary","from_date"),
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "departments" (
	"dept_no" CHAR,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_employees" (
	"emp_no" INT,
	"dept_no" CHAR,
	"from_date" DATE,
	"to_date" DATE,
	 PRIMARY KEY ("emp_no","dept_no","from_date"),
	 CONSTRAINT "fkeycon_dept_employees_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no"),
	 CONSTRAINT "fkeycon_dept_employees_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no")
);

CREATE TABLE "dept_managers" (
	"dept_no" CHAR,
	"emp_no" INT,
	"from_date" DATE,
	"to_date" DATE,
	 PRIMARY KEY ("dept_no","emp_no","from_date"),
	 CONSTRAINT "fkeycon_dept_managers_to_departments" FOREIGN KEY ("dept_no") REFERENCES "departments" ("dept_no"),
	 CONSTRAINT "fkeycon_dept_managers_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);
