DROP DATABASE IF EXISTS "schema2168";
CREATE DATABASE "schema2168";
USE "schema2168";
CREATE TABLE "player" (
	"id" SERIAL,
	"player_name" TEXT,
	"hp" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game_state" (
	"id" SERIAL,
	"current_map" TEXT,
	"saved_at" TIMESTAMP,
	"player_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_player_id" FOREIGN KEY ("player_id") REFERENCES "player" ("id")
);
