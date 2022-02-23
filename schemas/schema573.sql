DROP DATABASE IF EXISTS "schema573";
CREATE DATABASE "schema573";
USE "schema573";
CREATE TABLE "employees" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "fares" (
	"id" INT,
	"emp_id" INT,
	"pickup" VARCHAR,
	"dropoff" VARCHAR,
	"start" DATETIME,
	"end" DATETIME,
	"fare_charge" INT,
	"driver_fee" INT,
	"passenger_rating" TINYINT,
	"driver_rating" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fares_ibfk_1" FOREIGN KEY ("emp_id") REFERENCES "employees" ("id")
);
