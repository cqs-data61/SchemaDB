DROP DATABASE IF EXISTS "schema214";
CREATE DATABASE "schema214";
USE "schema214";
CREATE TABLE "manager" (
	"id" INT,
	"manager_name" VARCHAR
);

CREATE TABLE "employees" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
