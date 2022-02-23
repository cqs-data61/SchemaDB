DROP DATABASE IF EXISTS "schema212";
CREATE DATABASE "schema212";
USE "schema212";
CREATE TABLE "payroll" (
	"id" INT,
	"position" VARCHAR,
	"wage" DECIMAL,
	"job_description" VARCHAR,
	"id_number" INT,
	"hours_worked" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone_number" INT,
	"age" INT,
	"id_number" INT,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
