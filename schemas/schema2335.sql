DROP DATABASE IF EXISTS "schema2335";
CREATE DATABASE "schema2335";
USE "schema2335";
CREATE TABLE "favoriteplayers" (
	"id" SERIAL,
	"position" VARCHAR,
	"player" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teams" (
	"id" SERIAL,
	"city" VARCHAR,
	"name" VARCHAR,
	"logo" VARCHAR,
	"questionableperseason" INTEGER,
	"doubtfulperseason" INTEGER,
	"outperseason" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "players" (
	"id" SERIAL,
	"position" VARCHAR,
	"player" VARCHAR,
	"team" VARCHAR,
	"gamesplayed" INTEGER,
	"gamesmissed" INTEGER,
	"photo" VARCHAR,
	 PRIMARY KEY ("id")
);
