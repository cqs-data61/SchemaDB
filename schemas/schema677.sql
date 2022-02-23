DROP DATABASE IF EXISTS "schema677";
CREATE DATABASE "schema677";
USE "schema677";
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
	"stock" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "estate" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" VARCHAR,
	"thumbnail" VARCHAR,
	"address" VARCHAR,
	"latitude" DOUBLE PRECISION,
	"longitude" DOUBLE PRECISION,
	"rent" INTEGER,
	"door_height" INTEGER,
	"door_width" INTEGER,
	"features" VARCHAR,
	"popularity" INTEGER,
	 PRIMARY KEY ("id")
);
