DROP DATABASE IF EXISTS "schema893";
CREATE DATABASE "schema893";
USE "schema893";
CREATE TABLE "cards" (
	"id" INT,
	"employee_id" INT,
	"ts" TIMESTAMP,
	 PRIMARY KEY ("ts")
);

CREATE TABLE "rewards" (
	"id" INT,
	"employee_id" INT,
	"ts" TIMESTAMP,
	 PRIMARY KEY ("ts")
);

CREATE TABLE "employee_name" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
