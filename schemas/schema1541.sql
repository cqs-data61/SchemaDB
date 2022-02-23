DROP DATABASE IF EXISTS "schema1541";
CREATE DATABASE "schema1541";
USE "schema1541";
CREATE TABLE "qualifications" (
	"username" VARCHAR,
	"tech_id" INTEGER,
	 PRIMARY KEY ("username","tech_id")
);

CREATE TABLE "requirements" (
	"tech_id" INTEGER,
	"job_id" INTEGER,
	 PRIMARY KEY ("tech_id","job_id")
);

CREATE TABLE "technologies" (
	"id" SERIAL,
	"technology" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "applications" (
	"username" VARCHAR,
	"job_id" INTEGER,
	"state" ENUM,
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
