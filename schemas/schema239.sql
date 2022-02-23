DROP DATABASE IF EXISTS "schema239";
CREATE DATABASE "schema239";
USE "schema239";
CREATE TABLE "job_offers" (
	"id" SERIAL,
	"title" VARCHAR,
	"location" VARCHAR,
	"type" VARCHAR,
	"description" TEXT,
	"status" VARCHAR,
	"person_id" INT,
	"company_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "applications" (
	"id" SERIAL,
	"status" VARCHAR,
	"person_id" INT,
	"job_id" INT,
	"company_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "jobs" (
	"id" SERIAL,
	"title" VARCHAR,
	"location" VARCHAR,
	"type" VARCHAR,
	"description" TEXT,
	"company_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"id" SERIAL,
	"company_name" VARCHAR,
	"phone" VARCHAR,
	"company_url" VARCHAR,
	"logo" VARCHAR,
	"country" VARCHAR,
	"auth_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone" VARCHAR,
	"job_title" VARCHAR,
	"country" VARCHAR,
	"age" VARCHAR,
	"avatar" VARCHAR,
	"experince" VARCHAR,
	"cv" VARCHAR,
	"auth_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth" (
	"id" SERIAL,
	"email" VARCHAR,
	"password" VARCHAR,
	"account_type" VARCHAR,
	"session_id" VARCHAR,
	 PRIMARY KEY ("id")
);
