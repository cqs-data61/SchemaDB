DROP DATABASE IF EXISTS "schema232";
CREATE DATABASE "schema232";
USE "schema232";
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
