DROP DATABASE IF EXISTS "schema2297";
CREATE DATABASE "schema2297";
USE "schema2297";
CREATE TABLE "restaurants" (
	"id" INT,
	"restaurantname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reservations" (
	"id" INT,
	"restaurantid" INT,
	"datetoreserve" VARCHAR,
	"timetoreserve" VARCHAR,
	"partysize" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_reservations_to_restaurants" FOREIGN KEY ("restaurantid") REFERENCES "restaurants" ("id")
);
