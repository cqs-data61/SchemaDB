DROP DATABASE IF EXISTS "schema2039";
CREATE DATABASE "schema2039";
USE "schema2039";
CREATE TABLE "lobby" (
	"id" INT,
	"name" VARCHAR,
	"entry_fees" INT,
	"max_members" INT,
	"prize_money" INT,
	"lobby_charges" INT,
	"active_members" INT,
	"winner" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "members" (
	"id" INT,
	"lobby_id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_members_to_lobby" FOREIGN KEY ("lobby_id") REFERENCES "lobby" ("id")
);
