DROP DATABASE IF EXISTS "schema51";
CREATE DATABASE "schema51";
USE "schema51";
CREATE TABLE "locals" (
	"id" INT,
	"name" VARCHAR,
	"awards" VARCHAR,
	"restaurants" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chefs" (
	"id" INT,
	"name" VARCHAR,
	"awards" VARCHAR,
	"restaurants" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("id")
);
