DROP DATABASE IF EXISTS "schema608";
CREATE DATABASE "schema608";
USE "schema608";
CREATE TABLE "meals" (
	"id" SERIAL,
	"name" VARCHAR,
	"protein" NUMERIC,
	"fat" NUMERIC,
	"carbs" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "entries" (
	"date" TIMESTAMP,
	"meal_id" INT,
	 CONSTRAINT "fkeycon_entries_to_meals" FOREIGN KEY ("meal_id") REFERENCES "meals" ("id")
);
