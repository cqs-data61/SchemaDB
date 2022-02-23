DROP DATABASE IF EXISTS "schema1050";
CREATE DATABASE "schema1050";
USE "schema1050";
CREATE TABLE "ratings" (
	"id" SERIAL,
	"user_id" INTEGER,
	"album_id" INTEGER,
	"rating" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reviews" (
	"id" SERIAL,
	"user_id" INTEGER,
	"album_id" INTEGER,
	"review_date" DATE,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"user_password" TEXT,
	"user_role" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "songs" (
	"id" SERIAL,
	"album_id" INTEGER,
	"song_name" TEXT,
	"song_length_seconds" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
	"id" SERIAL,
	"album_name" TEXT,
	"artist_id" INTEGER,
	"album_genre_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" SERIAL,
	"genre_name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" SERIAL,
	"artist_name" TEXT,
	 PRIMARY KEY ("id")
);
