DROP DATABASE IF EXISTS "schema455";
CREATE DATABASE "schema455";
USE "schema455";
CREATE TABLE "todo" (
	"id" INT,
	"userid" INT,
	"title" VARCHAR,
	"done" BOOLEAN,
	"priority" TINYINT,
	"duedate" DATE,
	"constraint" USER_FK,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"constraint" UNIQUE_EMAIL,
	 PRIMARY KEY ("id")
);
