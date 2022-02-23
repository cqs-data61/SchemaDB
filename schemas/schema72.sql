DROP DATABASE IF EXISTS "schema72";
CREATE DATABASE "schema72";
USE "schema72";
CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "itinerary" (
	"itinerary_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"itinerary_date" DATE,
	 PRIMARY KEY ("itinerary_id"),
	 CONSTRAINT "fk_itinerary" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "locations" (
	"location_id" VARCHAR,
	"name" VARCHAR,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"itinerary_id" INT,
	"address" VARCHAR,
	"location_order" INT,
	 PRIMARY KEY ("location_id","itinerary_id"),
	 CONSTRAINT "fk_itinerary_location" FOREIGN KEY ("itinerary_id") REFERENCES "itinerary" ("itinerary_id")
);
