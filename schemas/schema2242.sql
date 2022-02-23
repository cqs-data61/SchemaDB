DROP DATABASE IF EXISTS "schema2242";
CREATE DATABASE "schema2242";
USE "schema2242";
CREATE TABLE "var" (
	"key" TEXT,
	"value" TEXT,
	 PRIMARY KEY ("key")
);

CREATE TABLE "match" (
	"id" BIGSERIAL,
	"date" DATETIME,
	"type" SMALLINT,
	"map" TEXT,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_team" (
	"id" BIGSERIAL,
	"aligulac_id" BIGINT,
	"name" TEXT,
	"short_name" TEXT,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_player" (
	"id" BIGSERIAL,
	"revealed_id" BYTEA,
	"aligulac_id" BIGINT,
	"nickname" TEXT,
	"name" TEXT,
	"country" CHAR,
	"team" TEXT,
	"birthday" DATE,
	"earnings" INTEGER,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_team_member" (
	"pro_team_id" BIGINT,
	"pro_player_id" BIGINT,
	"updated" DATETIME,
	 PRIMARY KEY ("pro_player_id"),
	 CONSTRAINT "fk_pro_team_member_pro_player_id" FOREIGN KEY ("pro_player_id") REFERENCES "pro_player" ("id"),
	 CONSTRAINT "fk_pro_team_member_pro_team_id" FOREIGN KEY ("pro_team_id") REFERENCES "pro_team" ("id")
);

CREATE TABLE "social_media_link" (
	"pro_player_id" BIGINT,
	"type" SMALLINT,
	"url" TEXT,
	"updated" DATETIME,
	 PRIMARY KEY ("pro_player_id","type"),
	 CONSTRAINT "fk_social_media_link_pro_player_id" FOREIGN KEY ("pro_player_id") REFERENCES "pro_player" ("id")
);

CREATE TABLE "queue_stats" (
	"id" BIGSERIAL,
	"season" SMALLINT,
	"queue_type" SMALLINT,
	"team_type" SMALLINT,
	"player_base" BIGINT,
	"player_count" INTEGER,
	"low_activity_player_count" INTEGER,
	"medium_activity_player_count" INTEGER,
	"high_activity_player_count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "season" (
	"id" SERIAL,
	"region" SMALLINT,
	"battlenet_id" SMALLINT,
	"year" SMALLINT,
	"number" SMALLINT,
	"start" DATE,
	"end" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "league" (
	"id" SERIAL,
	"season_id" INTEGER,
	"type" SMALLINT,
	"queue_type" SMALLINT,
	"team_type" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_league_season_id" FOREIGN KEY ("season_id") REFERENCES "season" ("id")
);

CREATE TABLE "league_stats" (
	"league_id" INTEGER,
	"team_count" INTEGER,
	"terran_games_played" INTEGER,
	"protoss_games_played" INTEGER,
	"zerg_games_played" INTEGER,
	"random_games_played" INTEGER,
	 PRIMARY KEY ("league_id"),
	 CONSTRAINT "fk_league_stats_league_id" FOREIGN KEY ("league_id") REFERENCES "league" ("id")
);

CREATE TABLE "league_tier" (
	"id" SERIAL,
	"league_id" INTEGER,
	"type" SMALLINT,
	"min_rating" SMALLINT,
	"max_rating" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_league_tier_league_id" FOREIGN KEY ("league_id") REFERENCES "league" ("id")
);

CREATE TABLE "division" (
	"id" SERIAL,
	"league_tier_id" INTEGER,
	"battlenet_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_division_league_tier_id" FOREIGN KEY ("league_tier_id") REFERENCES "league_tier" ("id")
);

CREATE TABLE "team" (
	"id" BIGSERIAL,
	"legacy_id" NUMERIC,
	"division_id" INTEGER,
	"season" SMALLINT,
	"region" SMALLINT,
	"league_type" SMALLINT,
	"queue_type" SMALLINT,
	"team_type" SMALLINT,
	"tier_type" SMALLINT,
	"rating" SMALLINT,
	"points" SMALLINT,
	"wins" SMALLINT,
	"losses" SMALLINT,
	"ties" SMALLINT,
	"global_rank" INTEGER,
	"region_rank" INTEGER,
	"league_rank" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_team_division_id" FOREIGN KEY ("division_id") REFERENCES "division" ("id")
);

CREATE TABLE "team_state" (
	"team_id" BIGINT,
	"timestamp" DATETIME,
	"division_id" INTEGER,
	"games" SMALLINT,
	"rating" SMALLINT,
	 PRIMARY KEY ("team_id","timestamp"),
	 CONSTRAINT "fk_team_state_team_id" FOREIGN KEY ("team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_team_state_division_id" FOREIGN KEY ("division_id") REFERENCES "division" ("id")
);

CREATE TABLE "account" (
	"id" BIGSERIAL,
	"partition" SMALLINT,
	"battle_tag" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pro_player_account" (
	"pro_player_id" BIGINT,
	"account_id" BIGINT,
	"updated" DATETIME,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_pro_player_account_pro_player_id" FOREIGN KEY ("pro_player_id") REFERENCES "pro_player" ("id"),
	 CONSTRAINT "fk_pro_player_account_account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "account_following" (
	"account_id" BIGINT,
	"following_account_id" BIGINT,
	 PRIMARY KEY ("account_id","following_account_id"),
	 CONSTRAINT "fk_account_following_account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id"),
	 CONSTRAINT "fk_account_following_following_account_id" FOREIGN KEY ("following_account_id") REFERENCES "account" ("id")
);

CREATE TABLE "player_character" (
	"id" BIGSERIAL,
	"account_id" BIGINT,
	"battlenet_id" BIGINT,
	"region" SMALLINT,
	"realm" SMALLINT,
	"name" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_player_character_account_id" FOREIGN KEY ("account_id") REFERENCES "account" ("id")
);

CREATE TABLE "match_participant" (
	"match_id" BIGINT,
	"player_character_id" BIGINT,
	"decision" SMALLINT,
	 PRIMARY KEY ("match_id","player_character_id"),
	 CONSTRAINT "fk_match_participant_match_id" FOREIGN KEY ("match_id") REFERENCES "match" ("id"),
	 CONSTRAINT "fk_match_participant_player_character_id" FOREIGN KEY ("player_character_id") REFERENCES "player_character" ("id")
);

CREATE TABLE "player_character_stats" (
	"id" BIGSERIAL,
	"player_character_id" BIGINT,
	"queue_type" SMALLINT,
	"team_type" SMALLINT,
	"race" SMALLINT,
	"rating_max" SMALLINT,
	"league_max" SMALLINT,
	"games_played" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_player_character_stats_player_character_id" FOREIGN KEY ("player_character_id") REFERENCES "player_character" ("id")
);

CREATE TABLE "team_member" (
	"team_id" BIGINT,
	"player_character_id" BIGINT,
	"terran_games_played" SMALLINT,
	"protoss_games_played" SMALLINT,
	"zerg_games_played" SMALLINT,
	"random_games_played" SMALLINT,
	 PRIMARY KEY ("team_id","player_character_id"),
	 CONSTRAINT "fk_team_member_team_id" FOREIGN KEY ("team_id") REFERENCES "team" ("id"),
	 CONSTRAINT "fk_team_player_character_id" FOREIGN KEY ("player_character_id") REFERENCES "player_character" ("id")
);
