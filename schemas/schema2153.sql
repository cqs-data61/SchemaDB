DROP DATABASE IF EXISTS "schema2153";
CREATE DATABASE "schema2153";
USE "schema2153";
CREATE TABLE "favorite_movies" (
	"id" INT,
	"movie" VARCHAR,
	"five_times" BOOLEAN,
	"score" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorite_songs" (
	"song" VARCHAR,
	"artist" VARCHAR,
	"score" INTEGER
);

CREATE TABLE "favorite_foods" (
	"food" VARCHAR,
	"score" INT
);
