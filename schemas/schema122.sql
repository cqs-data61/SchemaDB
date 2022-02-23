DROP DATABASE IF EXISTS "schema122";
CREATE DATABASE "schema122";
USE "schema122";
CREATE TABLE "log" (
	"id" INT,
	"user_id" INT,
	"task_id" INT,
	"duration" INT,
	"logged_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INT,
	"name" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id")
);
