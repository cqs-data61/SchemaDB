DROP DATABASE IF EXISTS "schema1373";
CREATE DATABASE "schema1373";
USE "schema1373";
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
	"department_id" VARCHAR
);

CREATE TABLE "department" (
	"id" VARCHAR,
	"name" VARCHAR
);
