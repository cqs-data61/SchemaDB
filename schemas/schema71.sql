DROP DATABASE IF EXISTS "schema71";
CREATE DATABASE "schema71";
USE "schema71";
CREATE TABLE "visit" (
	"id" INTEGER,
	"visit_date" DATE,
	"visit_time" TIME,
	"patient_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patient" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
