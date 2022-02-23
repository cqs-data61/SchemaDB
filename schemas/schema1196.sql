DROP DATABASE IF EXISTS "schema1196";
CREATE DATABASE "schema1196";
USE "schema1196";
CREATE TABLE "job_status" (
	"status_id" INT,
	"status_description" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "status" (
	"status_id" INT,
	"status_description" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "severity" (
	"severity_id" INT,
	"severity_description" VARCHAR,
	 PRIMARY KEY ("severity_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "potholes" (
	"pothole_id" SERIAL,
	"address" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"severity_id" INT,
	"status_id" INT,
	"date_reported" DATE,
	"date_inspected" DATE,
	"date_repaired" DATE,
	"user_id" INT,
	 PRIMARY KEY ("pothole_id"),
	 CONSTRAINT "fkeycon_potholes_to_status" FOREIGN KEY ("status_id") REFERENCES "status" ("status_id"),
	 CONSTRAINT "fkeycon_potholes_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_potholes_to_severity" FOREIGN KEY ("severity_id") REFERENCES "severity" ("severity_id")
);

CREATE TABLE "jobs" (
	"job_id" SERIAL,
	"pothole_id" INT,
	"employee_id" INT,
	"job_status" INT,
	"opened_date" DATE,
	"closed_date" DATE,
	 CONSTRAINT "fkeycon_jobs_to_job_status" FOREIGN KEY ("job_status") REFERENCES "job_status" ("status_id"),
	 CONSTRAINT "fkeycon_jobs_to_potholes" FOREIGN KEY ("pothole_id") REFERENCES "potholes" ("pothole_id")
);
