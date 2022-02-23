DROP DATABASE IF EXISTS "schema221";
CREATE DATABASE "schema221";
USE "schema221";
CREATE TABLE "department" (
	"dept_id" INT,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("dept_id")
);

CREATE TABLE "company_role" (
	"role_id" INT,
	"title" VARCHAR,
	"salary" DEC,
	"dept_id" INT,
	 PRIMARY KEY ("role_id"),
	 CONSTRAINT "fkeycon_company_role_to_department" FOREIGN KEY ("dept_id") REFERENCES "department" ("dept_id")
);

CREATE TABLE "employees" (
	"emp_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"emp_role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("emp_id"),
	 CONSTRAINT "fkeycon_employees_to_company_role" FOREIGN KEY ("emp_role_id") REFERENCES "company_role" ("role_id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("emp_id")
);
