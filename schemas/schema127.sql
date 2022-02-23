DROP DATABASE IF EXISTS "schema127";
CREATE DATABASE "schema127";
USE "schema127";
CREATE TABLE "history_owner" (
	"id" SERIAL,
	"driver_id" INT,
	"car_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "driver" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car" (
	"id" SERIAL,
	"name" VARCHAR,
	"engine_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "engine" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
