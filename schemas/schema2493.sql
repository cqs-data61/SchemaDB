DROP DATABASE IF EXISTS "schema2493";
CREATE DATABASE "schema2493";
USE "schema2493";
CREATE TABLE "items" (
	"symbol" CHAR,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("symbol")
);

CREATE TABLE "player" (
	"id" SERIAL,
	"name" TEXT,
	"max_hp" INTEGER,
	"hp" INTEGER,
	"attack" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inventory" (
	"id" SERIAL,
	"player_id" INTEGER,
	"item_symbol" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_item_symbol" FOREIGN KEY ("item_symbol") REFERENCES "items" ("symbol"),
	 CONSTRAINT "fk_player_id" FOREIGN KEY ("player_id") REFERENCES "player" ("id")
);

CREATE TABLE "mobs" (
	"symbol" CHAR,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("symbol")
);

CREATE TABLE "map" (
	"id" SERIAL,
	"level" INTEGER,
	"width" INTEGER,
	"height" INTEGER,
	"terrain" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game_state" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"saved_at" TIMESTAMP,
	"player_id" INTEGER,
	"map_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_map_id" FOREIGN KEY ("map_id") REFERENCES "map" ("id"),
	 CONSTRAINT "fk_player_id" FOREIGN KEY ("player_id") REFERENCES "player" ("id")
);

CREATE TABLE "item" (
	"id" SERIAL,
	"type_symbol" CHAR,
	"map_id" INTEGER,
	"x" INTEGER,
	"y" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_map_id" FOREIGN KEY ("map_id") REFERENCES "map" ("id"),
	 CONSTRAINT "fk_type_symbol" FOREIGN KEY ("type_symbol") REFERENCES "items" ("symbol")
);

CREATE TABLE "mob" (
	"id" SERIAL,
	"map_id" INTEGER,
	"type_symbol" CHAR,
	"x" INTEGER,
	"y" INTEGER,
	"hp" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_map_id" FOREIGN KEY ("map_id") REFERENCES "map" ("id"),
	 CONSTRAINT "fk_type_symbol" FOREIGN KEY ("type_symbol") REFERENCES "items" ("symbol")
);
