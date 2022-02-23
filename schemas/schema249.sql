DROP DATABASE IF EXISTS "schema249";
CREATE DATABASE "schema249";
USE "schema249";
CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT
);

CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR
);
