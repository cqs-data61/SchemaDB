DROP DATABASE IF EXISTS "schema2181";
CREATE DATABASE "schema2181";
USE "schema2181";
CREATE TABLE "flight" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "gate" (
	"id" INT,
	"flight_id" INT,
	"name" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);
