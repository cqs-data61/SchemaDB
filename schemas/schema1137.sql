DROP DATABASE IF EXISTS "schema1137";
CREATE DATABASE "schema1137";
USE "schema1137";
CREATE TABLE "actors" (
	"id" BIGINT,
	"name" VARCHAR,
	"year" YEAR
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tv_shows" (
	"id" BIGINT,
	"name" VARCHAR,
	"short_desc" VARCHAR,
	"long_desc" VARCHAR,
	"year" YEAR,
	"recommended_age" TINYINT,
	"category_id" BIGINT,
	"advertising" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_TV_SHOWS_CATEGORY_ID" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "actors_tvshows" (
	"id" BIGINT,
	"tvshow_id" BIGINT,
	"actor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_ACTOR_TVSHOW_ID" FOREIGN KEY ("tvshow_id") REFERENCES "tv_shows" ("id"),
	 CONSTRAINT "FK_TVSHOW_ACTORS_ID" FOREIGN KEY ("actor_id") REFERENCES "tv_shows" ("id")
);

CREATE TABLE "category_tvshows" (
	"id" BIGINT,
	"tvshow_id" BIGINT,
	"category_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_TVSHOW_CATEGORY_ID" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "FK_CATEGORY_TVSHOW_ID" FOREIGN KEY ("tvshow_id") REFERENCES "tv_shows" ("id")
);

CREATE TABLE "seasons" (
	"id" BIGINT,
	"number" TINYINT,
	"name" VARCHAR,
	"tv_show_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_SEASONS_TV_SHOW_ID" FOREIGN KEY ("tv_show_id") REFERENCES "tv_shows" ("id")
);

CREATE TABLE "chapters" (
	"id" BIGINT,
	"number" TINYINT,
	"name" VARCHAR,
	"duration" TINYINT,
	"season_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_CHAPTERS_SEASON_ID" FOREIGN KEY ("season_id") REFERENCES "seasons" ("id")
);
