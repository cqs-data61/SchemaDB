DROP DATABASE IF EXISTS "schema535";
CREATE DATABASE "schema535";
USE "schema535";
CREATE TABLE "scooters" (
	"id" SERIAL,
	"company" VARCHAR,
	"last_updated" BIGINT,
	"bike_id" TEXT,
	"lat" NUMERIC,
	"lon" NUMERIC,
	"is_reserved" BOOLEAN,
	"is_disabled" BOOLEAN,
	 PRIMARY KEY ("id")
);
