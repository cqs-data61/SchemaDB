DROP DATABASE IF EXISTS "schema244";
CREATE DATABASE "schema244";
USE "schema244";
CREATE TABLE "ufo_sighting" (
	"id" SERIAL,
	"date" DATE,
	"city" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"comments" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bigfoot_sighting" (
	"number" FLOAT,
	"date" DATE,
	"county" VARCHAR,
	"state" VARCHAR,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"observed" VARCHAR,
	 PRIMARY KEY ("number")
);
