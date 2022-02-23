DROP DATABASE IF EXISTS "schema1255";
CREATE DATABASE "schema1255";
USE "schema1255";
CREATE TABLE "task" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"date_created" DATE,
	"due_date" DATE,
	"status" VARCHAR,
	"project_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" SERIAL,
	"name" VARCHAR,
	"date_created" DATE,
	 PRIMARY KEY ("id")
);
