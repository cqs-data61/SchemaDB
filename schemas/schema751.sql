DROP DATABASE IF EXISTS "schema751";
CREATE DATABASE "schema751";
USE "schema751";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game" (
	"id" INT,
	"title" VARCHAR,
	"type_of_game" VARCHAR,
	"media_format" VARCHAR,
	"console" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_game_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "music" (
	"id" INT,
	"title" VARCHAR,
	"media_format" VARCHAR,
	"artist" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_music_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "movie" (
	"id" INT,
	"title" VARCHAR,
	"media_format" VARCHAR,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_movie_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
