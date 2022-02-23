DROP DATABASE IF EXISTS "schema649";
CREATE DATABASE "schema649";
USE "schema649";
CREATE TABLE "ev_population" (
	"vin" VARCHAR,
	"county" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" CODE,
	"model" YEAR,
	"electric" RANGE,
	"electric" RANGE,
	"clean" ALTERNATIVE,
	"base" MSRP,
	"legislative" DISTRICT,
	"dol" VEHICLE,
	"vehicle" LOCATION,
	 PRIMARY KEY ("vin")
);

CREATE TABLE "global_commodities" (
	"position" VARCHAR,
	"rec_id" VARCHAR,
	"year" DATE,
	"country" VARCHAR,
	"commodity" VARCHAR,
	"location" VARCHAR,
	"fac_name" DATE,
	"latitude" INT,
	"longitude" INT,
	"maininvest" VARCHAR,
	"status" VARCHAR,
	"capacity" INT,
	"units" VARCHAR,
	"foreign" KEY,
	 PRIMARY KEY ("rec_id")
);
