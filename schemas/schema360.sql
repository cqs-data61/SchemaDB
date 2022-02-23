DROP DATABASE IF EXISTS "schema360";
CREATE DATABASE "schema360";
USE "schema360";
CREATE TABLE "applications" (
	"username" VARCHAR,
	"job_id" INTEGER,
	 PRIMARY KEY ("username","job_id")
);

CREATE TABLE "jobs" (
	"id" SERIAL,
	"title" TEXT,
	"salary" INTEGER,
	"equity" NUMERIC,
	"company_handle" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" TEXT,
	"first_name" TEXT,
	"last_name" TEXT,
	"email" TEXT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "companies" (
	"handle" VARCHAR,
	"name" TEXT,
	"num_employees" INTEGER,
	"description" TEXT,
	"logo_url" TEXT,
	 PRIMARY KEY ("handle")
);
