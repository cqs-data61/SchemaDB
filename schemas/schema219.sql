DROP DATABASE IF EXISTS "schema219";
CREATE DATABASE "schema219";
USE "schema219";
CREATE TABLE "tournament" (
	"id" INTEGER,
	"title" TEXT,
	"t_date" TEXT,
	"current_rnd" INTEGER,
	"active" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "player" (
	"id" INTEGER,
	"tid" INTEGER,
	"p_name" TEXT,
	"corp_id" TEXT,
	"runner_id" TEXT,
	"score" INTEGER,
	"sos" REAL,
	"esos" REAL,
	"bias" INTEGER,
	"games_played" INTEGER,
	"received_bye" INTEGER,
	"active" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_player_to_tournament" FOREIGN KEY ("tid") REFERENCES "tournament" ("id")
);

CREATE TABLE "match" (
	"id" INTEGER,
	"match_num" INTEGER,
	"tid" INTEGER,
	"corp_id" INTEGER,
	"runner_id" INTEGER,
	"rnd" INTEGER,
	"corp_score" INTEGER,
	"runner_score" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_match_to_player" FOREIGN KEY ("runner_id") REFERENCES "player" ("id"),
	 CONSTRAINT "fkeycon_match_to_tournament" FOREIGN KEY ("tid") REFERENCES "tournament" ("id")
);
