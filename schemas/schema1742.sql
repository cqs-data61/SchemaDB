DROP DATABASE IF EXISTS "schema1742";
CREATE DATABASE "schema1742";
USE "schema1742";
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
