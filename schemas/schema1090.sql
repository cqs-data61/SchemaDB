DROP DATABASE IF EXISTS "schema1090";
CREATE DATABASE "schema1090";
USE "schema1090";
CREATE TABLE "league" (
	"id" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"parent_league_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "standing" (
	"id" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"season_id" INT,
	"team_id" INT,
	"win" INT,
	"loss" INT,
	"tie" INT,
	"otloss" INT,
	"point" INT,
	"gp" INT,
	"gf" INT,
	"ga" INT,
	"home_win" INT,
	"home_loss" INT,
	"home_tie" INT,
	"home_otloss" INT,
	"home_point" INT,
	"home_gp" INT,
	"away_win" INT,
	"away_loss" INT,
	"away_tie" INT,
	"away_otloss" INT,
	"away_point" INT,
	"away_gp" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "season" (
	"id" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"league_id" INT,
	"title" VARCHAR,
	"winner_team_id" INT,
	"summary" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "game" (
	"id" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"sport" VARCHAR,
	"season_id" INT,
	"home_team_id" INT,
	"away_team_id" INT,
	"home_score" INT,
	"away_score" INT,
	"status" VARCHAR,
	"ending_period" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "team" (
	"id" INT,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	"league_id" INT,
	"location" VARCHAR,
	"name" VARCHAR,
	"active" BOOLEAN,
	 PRIMARY KEY ("id")
);
