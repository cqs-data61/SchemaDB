DROP DATABASE IF EXISTS "schema659";
CREATE DATABASE "schema659";
USE "schema659";
CREATE TABLE "country" (
	"country_id" INT,
	"country" VARCHAR,
	"region" VARCHAR,
	 PRIMARY KEY ("country_id")
);

CREATE TABLE "happiness_data" (
	"happy_id" SERIAL,
	"year" VARCHAR,
	"country_id" INT,
	"happiness_score" FLOAT,
	"gdp" FLOAT,
	"life_expectancy" FLOAT,
	"freedom_score" FLOAT,
	"trust_score" FLOAT,
	"generosity_score" FLOAT,
	 PRIMARY KEY ("happy_id"),
	 CONSTRAINT "fkeycon_happiness_data_to_country" FOREIGN KEY ("country_id") REFERENCES "country" ("country_id")
);
