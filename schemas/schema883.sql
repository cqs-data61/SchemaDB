DROP DATABASE IF EXISTS "schema883";
CREATE DATABASE "schema883";
USE "schema883";
CREATE TABLE "flights_info" (
	"id" SERIAL,
	"flight_num" NUMERIC,
	"airline" VARCHAR,
	"departure" VARCHAR,
	"arrival" VARCHAR,
	"flight_date" DATE,
	"flight_status" VARCHAR,
	"logo" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"flight_id" INT,
	"user_name" VARCHAR,
	"comment" TEXT,
	"flight_rate" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_reviews" FOREIGN KEY ("flight_id") REFERENCES "flights_info" ("id")
);

CREATE TABLE "airlines" (
	"id" SERIAL,
	"airline" VARCHAR,
	"rate" NUMERIC,
	"logo" TEXT,
	 PRIMARY KEY ("id")
);
