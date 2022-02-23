DROP DATABASE IF EXISTS "schema604";
CREATE DATABASE "schema604";
USE "schema604";
CREATE TABLE "paths" (
	"innode" INTEGER,
	"outnode" INTEGER,
	"venue_id" INTEGER,
	 PRIMARY KEY ("innode","outnode")
);

CREATE TABLE "waypoints" (
	"waypoint_id" SERIAL,
	"venue_id" INTEGER,
	"destination_id" INTEGER,
	"latitude" FLOAT,
	"longitude" FLOAT,
	 PRIMARY KEY ("waypoint_id")
);

CREATE TABLE "destinations" (
	"destination_id" SERIAL,
	"venue_id" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	"image_url" TEXT,
	"latitude" FLOAT,
	"longitude" FLOAT,
	 PRIMARY KEY ("destination_id")
);

CREATE TABLE "venues" (
	"venue_id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"image_url" TEXT,
	"latitude" FLOAT,
	"longitude" FLOAT,
	 PRIMARY KEY ("venue_id")
);
