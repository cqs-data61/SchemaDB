DROP DATABASE IF EXISTS "schema7";
CREATE DATABASE "schema7";
USE "schema7";
CREATE TABLE "holiday" (
	"id" INT,
	"storeid" INT,
	"holidays" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "store" (
	"id" INT,
	"name" VARCHAR,
	"owner" VARCHAR,
	"description" VARCHAR,
	"level" INT,
	"address" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bussinesstimes" (
	"id" INT,
	"storeid" INT,
	"day" VARCHAR,
	"open" VARCHAR,
	"close" VARCHAR,
	 PRIMARY KEY ("id")
);
