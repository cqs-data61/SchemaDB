DROP DATABASE IF EXISTS "schema2433";
CREATE DATABASE "schema2433";
USE "schema2433";
CREATE TABLE "team" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "player" (
	"id" INT,
	"team_id" INT,
	"name" VARCHAR,
	"uniform_number" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_player_team" FOREIGN KEY ("team_id") REFERENCES "team" ("id")
);

CREATE TABLE "game" (
	"id" BIGINT,
	"away_team_id" INT,
	"home_team_id" INT,
	"current_inning" INT,
	"current_halves" VARCHAR,
	"pitcher_uniform_number" INT,
	"batter_uniform_number" INT,
	"base1_uniform_number" INT,
	"base2_uniform_number" INT,
	"base3_uniform_number" INT,
	"strike_count" INT,
	"ball_count" INT,
	"out_count" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_game_team1" FOREIGN KEY ("home_team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_game_team2" FOREIGN KEY ("away_team_id") REFERENCES "team" ("id")
);

CREATE TABLE "batting_history" (
	"id" BIGINT,
	"game_id" BIGINT,
	"batter_team_id" INT,
	"batter_uniform_number" INT,
	"appear" INT,
	"hits" INT,
	"out" INT,
	"key_in_game" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_batting_history_team1" FOREIGN KEY ("batter_team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_batting_history_game1" FOREIGN KEY ("game_id") REFERENCES "game" ("id")
);

CREATE TABLE "inning" (
	"id" BIGINT,
	"game_id" BIGINT,
	"inning" INT,
	"halves" VARCHAR,
	"score" INT,
	"key_in_game" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_score_game1" FOREIGN KEY ("game_id") REFERENCES "game" ("id")
);

CREATE TABLE "pitch_history" (
	"id" BIGINT,
	"inning_id" BIGINT,
	"pitcher_team_id" INT,
	"pitcher_uniform_number" INT,
	"batter_team_id" INT,
	"batter_uniform_number" INT,
	"result" VARCHAR,
	"index_in_inning" INT,
	"strike_count" INT,
	"ball_count" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_pitch_history_team2" FOREIGN KEY ("batter_team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_pitch_history_team1" FOREIGN KEY ("pitcher_team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_history_inning1" FOREIGN KEY ("inning_id") REFERENCES "inning" ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"current_game_id" BIGINT,
	"current_game_venue" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_game1" FOREIGN KEY ("current_game_id") REFERENCES "game" ("id")
);

CREATE TABLE "oauth_access_token" (
	"id" BIGINT,
	"user_id" BIGINT,
	"resource_owner" VARCHAR,
	"access_token" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_oauth_access_token_user1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
