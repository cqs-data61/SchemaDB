DROP DATABASE IF EXISTS "schema1186";
CREATE DATABASE "schema1186";
USE "schema1186";
CREATE TABLE "jobs" (
	"job_id" SERIAL,
	"job_title" VARCHAR,
	"min_salary" FLOAT,
	"max_salary" FLOAT,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "locations" (
	"location_id" SERIAL,
	"street_address" VARCHAR,
	"postal_code" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("location_id")
);

CREATE TABLE "departments" (
	"department_id" SERIAL,
	"department_name" VARCHAR,
	"location_id" INTEGER,
	 PRIMARY KEY ("department_id"),
	 CONSTRAINT "fkeycon_departments_to_locations" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id")
);

CREATE TABLE "employees" (
	"employee_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone_number" VARCHAR,
	"hire_date" DATE,
	"job_id" INTEGER,
	"salary" FLOAT,
	"manager_id" INTEGER,
	"department_id" INTEGER,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employees_to_jobs" FOREIGN KEY ("job_id") REFERENCES "jobs" ("job_id"),
	 CONSTRAINT "fkeycon_employees_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("employee_id")
);

CREATE TABLE "dependents" (
	"dependent_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"relationship" VARCHAR,
	"employee_id" INTEGER,
	 PRIMARY KEY ("dependent_id"),
	 CONSTRAINT "fkeycon_dependents_to_employees" FOREIGN KEY ("employee_id") REFERENCES "employees" ("employee_id")
);
