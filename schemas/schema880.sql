DROP DATABASE IF EXISTS "schema880";
CREATE DATABASE "schema880";
USE "schema880";
CREATE TABLE "planets" (
	"id" INTEGER,
	"name" VARCHAR,
	"lord_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lords" (
	"id" INTEGER,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);
