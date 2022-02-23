DROP DATABASE IF EXISTS "schema451";
CREATE DATABASE "schema451";
USE "schema451";
CREATE TABLE "users" (
	"user_id" INT,
	"user_name" VARCHAR,
	"user_pass" VARCHAR,
	"is_admin" INT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "tour" (
	"tour_id" INT,
	"direction" VARCHAR,
	"date" DATE,
	"coast" INT,
	"user_id" INT,
	 PRIMARY KEY ("tour_id")
);
