DROP DATABASE IF EXISTS "schema2006";
CREATE DATABASE "schema2006";
USE "schema2006";
CREATE TABLE "itinerary" (
	"itinerary_id" INT,
	"itinerary_name" VARCHAR,
	 PRIMARY KEY ("itinerary_id")
);

CREATE TABLE "city" (
	"city_id" INT,
	"city_name" VARCHAR,
	"country_code" VARCHAR,
	"itinerary_id" INT,
	 PRIMARY KEY ("city_id"),
	 CONSTRAINT "FK_CITY_ITINERARY" FOREIGN KEY ("itinerary_id") REFERENCES "itinerary" ("itinerary_id")
);

CREATE TABLE "weather_forecast" (
	"weather_forecast_id" INT,
	"temperature" INT,
	"cloud" INT,
	"date_time" TIMESTAMP,
	"city_id" INT,
	 PRIMARY KEY ("weather_forecast_id"),
	 CONSTRAINT "FK_WEATHER_FORECAST_CITY" FOREIGN KEY ("city_id") REFERENCES "city" ("city_id")
);
