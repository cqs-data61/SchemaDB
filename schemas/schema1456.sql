DROP DATABASE IF EXISTS "schema1456";
CREATE DATABASE "schema1456";
USE "schema1456";
CREATE TABLE "jobs" (
	"job_id" SERIAL,
	"job_title" CHARACTER VARYING,
	"min_salary" NUMERIC,
	"max_salary" NUMERIC,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "regions" (
	"region_id" SERIAL,
	"region_name" CHARACTER VARYING,
	 PRIMARY KEY ("region_id")
);

CREATE TABLE "countries" (
	"country_id" CHARACTER,
	"country_name" CHARACTER VARYING,
	"region_id" INTEGER,
	 PRIMARY KEY ("country_id"),
	 CONSTRAINT "fkeycon_countries_to_regions" FOREIGN KEY ("region_id") REFERENCES "regions" ("region_id")
);

CREATE TABLE "locations" (
	"location_id" SERIAL,
	"street_address" CHARACTER VARYING,
	"postal_code" CHARACTER VARYING,
	"city" CHARACTER VARYING,
	"state_province" CHARACTER VARYING,
	"country_id" CHARACTER,
	 PRIMARY KEY ("location_id"),
	 CONSTRAINT "fkeycon_locations_to_countries" FOREIGN KEY ("country_id") REFERENCES "countries" ("country_id")
);

CREATE TABLE "departments" (
	"department_id" SERIAL,
	"department_name" CHARACTER VARYING,
	"location_id" INTEGER,
	 PRIMARY KEY ("department_id"),
	 CONSTRAINT "fkeycon_departments_to_locations" FOREIGN KEY ("location_id") REFERENCES "locations" ("location_id")
);

CREATE TABLE "employees" (
	"employee_id" SERIAL,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"phone_number" CHARACTER VARYING,
	"hire_date" DATE,
	"job_id" INTEGER,
	"salary" NUMERIC,
	"manager_id" INTEGER,
	"department_id" INTEGER,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fkeycon_employees_to_jobs" FOREIGN KEY ("job_id") REFERENCES "jobs" ("job_id"),
	 CONSTRAINT "fkeycon_employees_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id"),
	 CONSTRAINT "fkeycon_employees_to_employees" FOREIGN KEY ("manager_id") REFERENCES "employees" ("employee_id")
);

CREATE TABLE "dependents" (
	"dependent_id" SERIAL,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"relationship" CHARACTER VARYING,
	"employee_id" INTEGER,
	 PRIMARY KEY ("dependent_id"),
	 CONSTRAINT "fkeycon_dependents_to_employees" FOREIGN KEY ("employee_id") REFERENCES "employees" ("employee_id")
);
