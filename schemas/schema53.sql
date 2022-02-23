DROP DATABASE IF EXISTS "schema53";
CREATE DATABASE "schema53";
USE "schema53";
CREATE TABLE "trip" (
	"id" CHAR,
	"name" VARCHAR,
	"isdeleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" CHAR,
	"lat" FLOAT,
	"long" FLOAT,
	"name" VARCHAR,
	"date" DATETIME,
	"tripid" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_Location_Trip" FOREIGN KEY ("tripid") REFERENCES "trip" ("id")
);
