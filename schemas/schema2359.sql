DROP DATABASE IF EXISTS "schema2359";
CREATE DATABASE "schema2359";
USE "schema2359";
CREATE TABLE "favorite_movies" (
	"id" INTEGER,
	"movie" VARCHAR,
	"five_times" BOOLEAN,
	"score" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favorite_songs" (
	"song" VARCHAR,
	"artist" VARCHAR,
	"score" INTEGER
);

CREATE TABLE "favorite_foods" (
	"food" VARCHAR,
	"score" INTEGER
);
