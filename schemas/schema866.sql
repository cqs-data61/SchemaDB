DROP DATABASE IF EXISTS "schema866";
CREATE DATABASE "schema866";
USE "schema866";
CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INTEGER,
	"dep_name" VARCHAR,
	 PRIMARY KEY ("id")
);
