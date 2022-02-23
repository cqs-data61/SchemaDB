DROP DATABASE IF EXISTS "schema1779";
CREATE DATABASE "schema1779";
USE "schema1779";
CREATE TABLE "actors" (
	"id" INTEGER,
	"name" VARCHAR,
	"birthday" DATE,
	"death" DATE,
	"biography" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shows" (
	"id" INTEGER,
	"title" VARCHAR,
	"year" DATE,
	"overview" TEXT,
	"runtime" SMALLINT,
	"trailer" VARCHAR,
	"homepage" VARCHAR,
	"rating" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "show_genres" (
	"id" SERIAL,
	"show_id" INTEGER,
	"genre_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_show_genres_show_id" FOREIGN KEY ("show_id") REFERENCES "shows" ("id"),
	 CONSTRAINT "fk_show_genres_genre_id" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "show_characters" (
	"id" SERIAL,
	"show_id" INTEGER,
	"actor_id" INTEGER,
	"character_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_show_characters_actor_id" FOREIGN KEY ("actor_id") REFERENCES "actors" ("id"),
	 CONSTRAINT "fk_show_characters_show_id" FOREIGN KEY ("show_id") REFERENCES "shows" ("id")
);

CREATE TABLE "seasons" (
	"id" INTEGER,
	"season_number" SMALLINT,
	"title" VARCHAR,
	"overview" TEXT,
	"show_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_seasons_show_id" FOREIGN KEY ("show_id") REFERENCES "shows" ("id")
);

CREATE TABLE "episodes" (
	"id" INTEGER,
	"title" VARCHAR,
	"episode_number" SMALLINT,
	"overview" TEXT,
	"season_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_episodes_season_id" FOREIGN KEY ("season_id") REFERENCES "seasons" ("id")
);
