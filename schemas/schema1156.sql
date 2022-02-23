DROP DATABASE IF EXISTS "schema1156";
CREATE DATABASE "schema1156";
USE "schema1156";
CREATE TABLE "activities" (
	"aid" SERIAL,
	"date" DATE,
	"duration_time" TIME,
	"sid" INT,
	"uid" INT,
	"rid" INT,
	"timestamp" TIMESTAMP
);

CREATE TABLE "routes" (
	"rid" SERIAL,
	"start_location" VARCHAR,
	"end_location" VARCHAR,
	"distance" DECIMAL
);

CREATE TABLE "users" (
	"uid" SERIAL,
	"email" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "sports" (
	"sid" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR
);
