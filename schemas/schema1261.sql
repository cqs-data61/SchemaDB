DROP DATABASE IF EXISTS "schema1261";
CREATE DATABASE "schema1261";
USE "schema1261";
CREATE TABLE "genres" (
	"id" BIGINT,
	"parent_id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" BIGINT,
	"type_id" BIGINT,
	"name" VARCHAR,
	"actual" TINYINT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists_genres" (
	"artist_id" BIGINT,
	"genre_id" BIGINT,
	"is_primary" TINYINT,
	 PRIMARY KEY ("artist_id","genre_id"),
	 CONSTRAINT "fk_to_genres" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id"),
	 CONSTRAINT "fk_to_artists" FOREIGN KEY ("artist_id") REFERENCES "artists" ("id")
);
