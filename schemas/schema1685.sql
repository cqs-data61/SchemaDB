DROP DATABASE IF EXISTS "schema1685";
CREATE DATABASE "schema1685";
USE "schema1685";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"job_id" INT,
	"manager_id" INT
);

CREATE TABLE "job" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT
);

CREATE TABLE "department" (
	"id" INT,
	"dept_name" VARCHAR
);
