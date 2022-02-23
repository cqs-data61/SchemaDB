DROP DATABASE IF EXISTS "schema150";
CREATE DATABASE "schema150";
USE "schema150";
CREATE TABLE "project_employee" (
	"project_id" BIGINT,
	"employee_id" BIGINT
);

CREATE TABLE "project" (
	"project_id" BIGINT,
	"name" VARCHAR,
	"stage" VARCHAR,
	"description" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	 PRIMARY KEY ("project_id")
);

CREATE TABLE "employee" (
	"employee_id" BIGINT,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("employee_id")
);
