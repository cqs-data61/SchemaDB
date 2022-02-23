DROP DATABASE IF EXISTS "schema1829";
CREATE DATABASE "schema1829";
USE "schema1829";
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
