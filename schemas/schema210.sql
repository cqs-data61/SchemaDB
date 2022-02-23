DROP DATABASE IF EXISTS "schema210";
CREATE DATABASE "schema210";
USE "schema210";
CREATE TABLE "tbl_employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"employment_id" VARCHAR,
	"start_date" VARCHAR,
	"end_date" VARCHAR,
	"designation" VARCHAR,
	"department" VARCHAR,
	"status" VARCHAR,
	"dob" VARCHAR,
	"reporting_mgr" VARCHAR,
	"gender" CHAR,
	"blood_group" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_educational_qualifications" (
	"id" INT,
	"employee_id" INT,
	"type" VARCHAR,
	"start_date" VARCHAR,
	"end_date" VARCHAR,
	"institution" VARCHAR,
	"address" VARCHAR,
	"percentage" FLOAT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tbl_educational_qualifications_to_tbl_employees" FOREIGN KEY ("employee_id") REFERENCES "tbl_employees" ("id")
);

CREATE TABLE "tbl_dependants" (
	"id" INT,
	"employee_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"gender" CHAR,
	"dob" VARCHAR,
	"relationship" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tbl_dependants_to_tbl_employees" FOREIGN KEY ("employee_id") REFERENCES "tbl_employees" ("id")
);
