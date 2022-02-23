DROP DATABASE IF EXISTS "schema2133";
CREATE DATABASE "schema2133";
USE "schema2133";
CREATE TABLE "movies" (
	"id" SERIAL,
	"title" VARCHAR,
	"genre" VARCHAR,
	"release_date" DATE,
	 PRIMARY KEY ("id")
);
