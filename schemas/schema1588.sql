DROP DATABASE IF EXISTS "schema1588";
CREATE DATABASE "schema1588";
USE "schema1588";
CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT
);

CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR
);
