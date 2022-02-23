DROP DATABASE IF EXISTS "schema849";
CREATE DATABASE "schema849";
USE "schema849";
CREATE TABLE "genres" (
	"id" LONG,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "playlists" (
	"id" LONG,
	"name" VARCHAR,
	"description" VARCHAR,
	"artwork" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" LONG,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "albums" (
	"id" LONG,
	"name" VARCHAR,
	"artist_id" LONG,
	"genre_id" LONG,
	"cover" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_albums_to_artists" FOREIGN KEY ("artist_id") REFERENCES "artists" ("id"),
	 CONSTRAINT "fkeycon_albums_to_genres" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "tracks" (
	"id" LONG,
	"name" VARCHAR,
	"album_id" LONG,
	"playlist_id" LONG,
	"duration" INT,
	"lyrics" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tracks_to_playlists" FOREIGN KEY ("playlist_id") REFERENCES "playlists" ("id"),
	 CONSTRAINT "fkeycon_tracks_to_albums" FOREIGN KEY ("album_id") REFERENCES "albums" ("id")
);
