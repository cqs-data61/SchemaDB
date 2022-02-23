DROP DATABASE IF EXISTS "schema574";
CREATE DATABASE "schema574";
USE "schema574";
CREATE TABLE "employees" (
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
