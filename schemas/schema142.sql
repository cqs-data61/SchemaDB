DROP DATABASE IF EXISTS "schema142";
CREATE DATABASE "schema142";
USE "schema142";
CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "forum" (
	"id" SERIAL,
	"username" TEXT,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "favourites" (
	"id" SERIAL,
	"username" TEXT,
	"song_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "songs" (
	"id" SERIAL,
	"song" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genre" (
	"id" SERIAL,
	"genre" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "year" (
	"id" SERIAL,
	"year" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" SERIAL,
	"artist" TEXT,
	"year_id" INTEGER,
	"genre_id" INTEGER,
	"song_id" INTEGER,
	 PRIMARY KEY ("id")
);
