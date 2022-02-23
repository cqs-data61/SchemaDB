DROP DATABASE IF EXISTS "schema125";
CREATE DATABASE "schema125";
USE "schema125";
CREATE TABLE "actor" (
	"id" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"config" VARCHAR,
	"hide" BOOLEAN
);

CREATE TABLE "config" (
	"name" VARCHAR,
	"value" VARCHAR,
	"type" VARCHAR,
	"description" VARCHAR,
	"options" VARCHAR
);

CREATE TABLE "fermenter" (
	"id" INTEGER,
	"name" VARCHAR,
	"brewname" VARCHAR,
	"sensor" VARCHAR,
	"sensor2" VARCHAR,
	"sensor3" VARCHAR,
	"heater" VARCHAR,
	"logic" VARCHAR,
	"config" VARCHAR,
	"cooler" VARCHAR,
	"target_temp" INTEGER
);

CREATE TABLE "fermenter_step" (
	"id" INTEGER,
	"name" VARCHAR,
	"hours" INTEGER,
	"minutes" INTEGER,
	"days" INTEGER,
	"temp" INTEGER,
	"direction" VARCHAR,
	"order" INTEGER,
	"state" VARCHAR,
	"start" INTEGER,
	"timer_start" INTEGER,
	"end" INTEGER,
	"fermenter_id" INTEGER
);

CREATE TABLE "sensor" (
	"id" INTEGER,
	"type" VARCHAR,
	"name" VARCHAR,
	"config" VARCHAR,
	"hide" BOOLEAN
);

CREATE TABLE "step" (
	"id" INTEGER,
	"order" INTEGER,
	"name" VARCHAR,
	"type" VARCHAR,
	"stepstate" VARCHAR,
	"state" VARCHAR,
	"start" INTEGER,
	"end" INTEGER,
	"config" VARCHAR,
	"kettleid" INTEGER
);

CREATE TABLE "kettle" (
	"id" INTEGER,
	"name" VARCHAR,
	"sensor" VARCHAR,
	"heater" VARCHAR,
	"automatic" VARCHAR,
	"logic" VARCHAR,
	"config" VARCHAR,
	"agitator" VARCHAR,
	"target_temp" INTEGER,
	"height" INTEGER,
	"diameter" INTEGER
);
