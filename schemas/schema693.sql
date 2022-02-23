DROP DATABASE IF EXISTS "schema693";
CREATE DATABASE "schema693";
USE "schema693";
CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER
);

CREATE TABLE "role" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER
);

CREATE TABLE "department" (
	"id" INTEGER,
	"department_name" VARCHAR
);
