DROP DATABASE IF EXISTS "schema2298";
CREATE DATABASE "schema2298";
USE "schema2298";
CREATE TABLE "department" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employee" (
	"employee_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"department_id" INTEGER,
	"job_title" VARCHAR,
	"gender" VARCHAR,
	"date_of_birth" DATE,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "employee_fk0" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);
