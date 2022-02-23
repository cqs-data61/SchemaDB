DROP DATABASE IF EXISTS "schema1509";
CREATE DATABASE "schema1509";
USE "schema1509";
CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" VARCHAR,
	"manager_id" INTEGER
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER
);

CREATE TABLE "departments" (
	"id" INT,
	"department_name" VARCHAR
);
