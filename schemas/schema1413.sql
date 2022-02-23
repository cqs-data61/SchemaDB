DROP DATABASE IF EXISTS "schema1413";
CREATE DATABASE "schema1413";
USE "schema1413";
CREATE TABLE "games_stats" (
	"gameid" VARCHAR,
	"timestamp" TIMESTAMP,
	"gamestate" VARCHAR,
	"blueteamid" VARCHAR,
	"redteamid" VARCHAR,
	"blue_team_total_gold" INT,
	"blue_team_inhibitors" INT,
	"blue_team_towers" INT,
	"blue_team_barons" INT,
	"blue_team_total_kills" INT,
	"blue_team_dragons" TEXT,
	"red_team_total_gold" INT,
	"red_team_inhibitors" INT,
	"red_team_towers" INT,
	"red_team_barons" INT,
	"red_team_total_kills" INT,
	"red_team_dragons" TEXT
);

CREATE TABLE "participants_info" (
	"gameid" VARCHAR,
	"participantid" INT,
	"championid" VARCHAR,
	"esportsplayerid" VARCHAR,
	"summonername" VARCHAR,
	"role" VARCHAR
);

CREATE TABLE "participants_stats" (
	"gameid" VARCHAR,
	"game_externalid" VARCHAR,
	"participantid" INT,
	"game_timestamp" TIMESTAMP,
	"level" INT,
	"kills" INT,
	"deaths" INT,
	"assists" INT,
	"total_gold_earned" INT,
	"creep_score" INT,
	"kill_participation" DECIMAL,
	"champion_damage_share" DECIMAL,
	"wards_placed" INT,
	"wards_destroyed" INT
);

CREATE TABLE "games" (
	"id" VARCHAR,
	"gameid" VARCHAR,
	"matchid" VARCHAR,
	"patch_version" VARCHAR,
	"blueteamid" VARCHAR,
	"redteamid" VARCHAR,
	 PRIMARY KEY ("id")
);
