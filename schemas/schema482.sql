DROP DATABASE IF EXISTS "schema482";
CREATE DATABASE "schema482";
USE "schema482";
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
