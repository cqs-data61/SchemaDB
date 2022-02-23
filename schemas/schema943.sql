DROP DATABASE IF EXISTS "schema943";
CREATE DATABASE "schema943";
USE "schema943";
CREATE TABLE "user" (
	"user_id" SMALLINT,
	"reg_date" DATETIME,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR
);

CREATE TABLE "task" (
	"task_id" SMALLINT,
	"creation_date" DATETIME,
	"task_status" TINYINT,
	"taskname" VARCHAR,
	"fileref" VARCHAR,
	"endtime" DATE,
	"project_id" SMALLINT,
	"user_id" SMALLINT
);

CREATE TABLE "project" (
	"project_id" SMALLINT,
	"project_name" VARCHAR,
	"user_id" SMALLINT
);
