DROP DATABASE IF EXISTS "schema1701";
CREATE DATABASE "schema1701";
USE "schema1701";
CREATE TABLE "skyscanner_log" (
	"id" SERIAL,
	"flight_price" REAL,
	"is_direct" BOOL,
	"departure_date" TIMESTAMP,
	"carrier_id" INT,
	"carrier_name" VARCHAR,
	"departure_place_id" INT,
	"departure_place_iata_code" VARCHAR,
	"departure_place_name" VARCHAR,
	"departure_city_name" VARCHAR,
	"destination_place_id" INT,
	"destination_place_iata_code" VARCHAR,
	"destination_place_name" VARCHAR,
	"destination_city_name" VARCHAR,
	"quote_date_time" TIMESTAMP,
	"request_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "destinations_for_skyscanner" (
	"id" INT,
	"origin_place" VARCHAR,
	"destination_place" VARCHAR,
	"date" DATE,
	"country" VARCHAR,
	"currency" VARCHAR,
	 PRIMARY KEY ("id")
);
