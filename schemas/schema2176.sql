DROP DATABASE IF EXISTS "schema2176";
CREATE DATABASE "schema2176";
USE "schema2176";
CREATE TABLE "forecast" (
	"cityname" VARCHAR,
	"description" VARCHAR,
	"windspeed" DOUBLE,
	"humidity" LONG,
	"pressure" LONG,
	"tempmin" DOUBLE,
	"tempmax" DOUBLE,
	"feelslike" DOUBLE,
	"temp" DOUBLE,
	"localtime" VARCHAR
);

CREATE TABLE "cities" (
	"cityname" VARCHAR
);
