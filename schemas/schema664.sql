DROP DATABASE IF EXISTS "schema664";
CREATE DATABASE "schema664";
USE "schema664";
CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "certificate" (
	"id" INT,
	"name" VARCHAR,
	"organization" VARCHAR,
	"acq_date" DATE,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_certificate_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "project" (
	"id" INT,
	"name" VARCHAR,
	"detail" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_project_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "award" (
	"id" INT,
	"name" VARCHAR,
	"detail" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_competition_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "education" (
	"id" INT,
	"univ_name" VARCHAR,
	"major" VARCHAR,
	"degree" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_education_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
