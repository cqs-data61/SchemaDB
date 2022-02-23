DROP DATABASE IF EXISTS "schema1563";
CREATE DATABASE "schema1563";
USE "schema1563";
CREATE TABLE "song" (
	"song_id" INT,
	"singer" VARCHAR,
	"tittle" VARCHAR,
	"album" VARCHAR,
	"realise_date" DATE,
	 PRIMARY KEY ("song_id")
);

CREATE TABLE "playlist" (
	"playlist_id" INT,
	"playlist_name" VARCHAR,
	 PRIMARY KEY ("playlist_id")
);

CREATE TABLE "playlist_song" (
	"playlist_id" INT,
	"song_id" INT,
	 PRIMARY KEY ("playlist_id","song_id"),
	 CONSTRAINT "FK_SONG" FOREIGN KEY ("song_id") REFERENCES "song" ("song_id"),
	 CONSTRAINT "FK_PLAYLIST" FOREIGN KEY ("playlist_id") REFERENCES "playlist" ("playlist_id")
);
