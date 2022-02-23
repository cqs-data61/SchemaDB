DROP DATABASE IF EXISTS "schema2123";
CREATE DATABASE "schema2123";
USE "schema2123";
CREATE TABLE "matches_in_tournament" (
	"id" BIGINT,
	"confirming_winner_counter" INT,
	"first_team_name" VARCHAR,
	"second_team_name" VARCHAR,
	"is_winner_confirmed" BOOLEAN,
	"match_date" DATE,
	"winner_team" VARCHAR,
	"tournament_id" BIGINT,
	"is_match_was_played" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "matches_in_tournaments" (
	"id" BIGINT,
	"first_team_name" VARCHAR,
	"second_team_name" VARCHAR,
	"is_closed" BOOLEAN,
	"is_match_was_played" BOOLEAN,
	"is_winner_confirmed" BOOLEAN,
	"match_date" DATE,
	"winner_team" VARCHAR,
	"tournament_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "votes_for_winning_team_in_tournament_matches" (
	"match_in_tournament_id" BIGINT,
	"user_name" VARCHAR,
	"team_name" VARCHAR,
	 PRIMARY KEY ("match_in_tournament_id","user_name"),
	 CONSTRAINT "fk_votes_for_winning_team_in_tournament_matches_competition_id" FOREIGN KEY ("match_in_tournament_id") REFERENCES "matches_in_tournaments" ("id")
);

CREATE TABLE "tournaments" (
	"id" BIGINT,
	"city" VARCHAR,
	"max_amount_of_teams" INT,
	"street" VARCHAR,
	"street_number" INT,
	"tournament_name" VARCHAR,
	"tournament_owner" VARCHAR,
	"is_finished" BOOLEAN,
	"is_started" BOOLEAN,
	"tournament_start" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "match_times_in_tournament" (
	"tournament_id" BIGINT,
	"id" VARCHAR,
	"match_time" DATE,
	 PRIMARY KEY ("tournament_id","id"),
	 CONSTRAINT "fk_match_times_in_tournament_tournament_id" FOREIGN KEY ("tournament_id") REFERENCES "tournaments" ("id")
);

CREATE TABLE "drawed_teams_in_tournament" (
	"tournament_id" BIGINT,
	"id" VARCHAR,
	"duel" VARCHAR,
	 PRIMARY KEY ("tournament_id","id"),
	 CONSTRAINT "fk_drawed_teams_in_tournament_tournament_id" FOREIGN KEY ("tournament_id") REFERENCES "tournaments" ("id")
);
