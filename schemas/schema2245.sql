DROP DATABASE IF EXISTS "schema2245";
CREATE DATABASE "schema2245";
USE "schema2245";
CREATE TABLE "authors" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car_models" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car_marks" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
