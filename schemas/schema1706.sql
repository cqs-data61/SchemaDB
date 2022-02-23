DROP DATABASE IF EXISTS "schema1706";
CREATE DATABASE "schema1706";
USE "schema1706";
CREATE TABLE "titles" (
	"title_id" TEXT,
	"title" TEXT
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

CREATE TABLE "salaries" (
	"emp_no" INT,
	"salary" INT,
	 CONSTRAINT "fkeycon_salaries_to_employees" FOREIGN KEY ("emp_no") REFERENCES "employees" ("emp_no")
);

CREATE TABLE "department" (
	"dept_no" TEXT,
	"dept_name" TEXT,
	 PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_manager" (
	"dept_no" TEXT,
	"emp_no" INT,
	 CONSTRAINT "fkeycon_dept_manager_to_department" FOREIGN KEY ("dept_no") REFERENCES "department" ("dept_no")
);

CREATE TABLE "dept_employees" (
	"emp_no" INT,
	"dept_no" TEXT,
	 CONSTRAINT "fkeycon_dept_employees_to_department" FOREIGN KEY ("dept_no") REFERENCES "department" ("dept_no")
);
