DROP DATABASE IF EXISTS "schema266";
CREATE DATABASE "schema266";
USE "schema266";
CREATE TABLE "chair" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"thumbnail" VARCHAR,
	"price" INTEGER,
	"height" INTEGER,
	"width" INTEGER,
	"depth" INTEGER,
	"color" VARCHAR,
	"features" VARCHAR,
	"kind" VARCHAR,
	"popularity" INTEGER,
	"minus_popularity" INT,
	"stock" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "estate" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"thumbnail" VARCHAR,
	"address" VARCHAR,
	"latitude" DOUBLE,
	"longitude" DOUBLE,
	"point" POINT,
	"rent" INTEGER,
	"door_height" INTEGER,
	"door_width" INTEGER,
	"features" VARCHAR,
	"popularity" INTEGER,
	"minus_popularity" INT,
	 PRIMARY KEY ("id")
);
