DROP DATABASE IF EXISTS "schema703";
CREATE DATABASE "schema703";
USE "schema703";
CREATE TABLE "user_trips" (
	"trip_id" INTEGER,
	"username" TEXT,
	"trip_rating" NUMERIC,
	 PRIMARY KEY ("trip_id","username")
);

CREATE TABLE "trip_locations" (
	"trip_id" INTEGER,
	"location_id" TEXT,
	"location_position" INTEGER,
	 PRIMARY KEY ("trip_id","location_id","location_position")
);

CREATE TABLE "trips" (
	"id" SERIAL,
	"trip_name" VARCHAR,
	"distance" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location_ratings" (
	"location_id" TEXT,
	"username" TEXT,
	"rating" NUMERIC,
	 PRIMARY KEY ("location_id","username")
);

CREATE TABLE "locations" (
	"id" TEXT,
	"title" TEXT,
	"latitude" TEXT,
	"longitude" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"username" TEXT,
	"hashed_pwd" TEXT,
	"email" TEXT,
	"zip_code" VARCHAR,
	"country" CHAR,
	"units" CHAR,
	 PRIMARY KEY ("username")
);
