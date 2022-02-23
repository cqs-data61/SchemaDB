DROP DATABASE IF EXISTS "schema869";
CREATE DATABASE "schema869";
USE "schema869";
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
