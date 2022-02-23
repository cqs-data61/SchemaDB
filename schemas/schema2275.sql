DROP DATABASE IF EXISTS "schema2275";
CREATE DATABASE "schema2275";
USE "schema2275";
CREATE TABLE "kalaha" (
	"id" INT,
	"current_player" INT,
	"status" INT,
	"pit_count" INT,
	"winner" INT,
	"stones_per_pit" INT,
	"created_date" TIMESTAMP,
	"updated_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kalaha_pit" (
	"id" INT,
	"stones" INT,
	"game_id" INT,
	 CONSTRAINT "fk_game_id" FOREIGN KEY ("game_id") REFERENCES "kalaha" ("id")
);
