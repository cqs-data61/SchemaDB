DROP DATABASE IF EXISTS "schema47";
CREATE DATABASE "schema47";
USE "schema47";
CREATE TABLE "employees" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"job_title" VARCHAR,
	"role_id" INTEGER,
	"manager_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"job_title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departments" (
	"id" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("id")
);
