DROP DATABASE IF EXISTS "schema1880";
CREATE DATABASE "schema1880";
USE "schema1880";
CREATE TABLE "et_attendance_who" (
	"d" DATE,
	"who" VARCHAR,
	"mins" SMALLINT,
	 PRIMARY KEY ("d","who")
);

CREATE TABLE "et_attendance_timeline" (
	"id" INT,
	"d" DATE,
	"t" DATETIME,
	"event" VARCHAR,
	"who" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "et_attendance_days" (
	"d" DATE,
	"who" VARCHAR,
	"mins" SMALLINT,
	 PRIMARY KEY ("d")
);
