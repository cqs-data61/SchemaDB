DROP DATABASE IF EXISTS "schema1234";
CREATE DATABASE "schema1234";
USE "schema1234";
CREATE TABLE "goalies" (
	"id" INT,
	"player_id" VARCHAR,
	"full_name" VARCHAR,
	"number" VARCHAR,
	"nationality" VARCHAR,
	"team" VARCHAR,
	"position" VARCHAR,
	"games_played" VARCHAR,
	"wins" VARCHAR,
	"losses" VARCHAR,
	"ot" VARCHAR,
	"so" VARCHAR,
	"save_percentage" VARCHAR,
	"gaa" VARCHAR,
	"sa" VARCHAR,
	"saves" VARCHAR,
	"ga" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "skaters" (
	"id" INT,
	"player_id" VARCHAR,
	"full_name" VARCHAR,
	"number" VARCHAR,
	"nationality" VARCHAR,
	"team" VARCHAR,
	"position" VARCHAR,
	"games_played" VARCHAR,
	"goals" VARCHAR,
	"assists" VARCHAR,
	"points" VARCHAR,
	"plus_minus" VARCHAR,
	"fo_percentage" VARCHAR,
	"shot_percentage" VARCHAR,
	"pim" VARCHAR,
	"hits" VARCHAR,
	"blocks" VARCHAR,
	 PRIMARY KEY ("id")
);
