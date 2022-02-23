DROP DATABASE IF EXISTS "schema1013";
CREATE DATABASE "schema1013";
USE "schema1013";
CREATE TABLE "error_log" (
	"job_name" CHAR,
	"step_name" CHAR,
	"message" VARCHAR
);

CREATE TABLE "player_summary" (
	"id" CHAR,
	"year_no" BIGINT,
	"completes" BIGINT,
	"attempts" BIGINT,
	"passing_yards" BIGINT,
	"passing_td" BIGINT,
	"interceptions" BIGINT,
	"rushes" BIGINT,
	"rush_yards" BIGINT,
	"receptions" BIGINT,
	"receptions_yards" BIGINT,
	"total_td" BIGINT
);

CREATE TABLE "games" (
	"player_id" CHAR,
	"year_no" BIGINT,
	"team" CHAR,
	"week" BIGINT,
	"opponent" CHAR,
	"completes" BIGINT,
	"attempts" BIGINT,
	"passing_yards" BIGINT,
	"passing_td" BIGINT,
	"interceptions" BIGINT,
	"rushes" BIGINT,
	"rush_yards" BIGINT,
	"receptions" BIGINT,
	"receptions_yards" BIGINT,
	"total_td" BIGINT
);

CREATE TABLE "players" (
	"player_id" CHAR,
	"last_name" VARCHAR,
	"first_name" VARCHAR,
	"pos" VARCHAR,
	"year_of_birth" BIGINT,
	"year_drafted" BIGINT,
	 PRIMARY KEY ("player_id")
);

CREATE TABLE "customer" (
	"id" BIGINT,
	"version" BIGINT,
	"name" VARCHAR,
	"credit" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trade" (
	"id" BIGINT,
	"version" BIGINT,
	"isin" VARCHAR,
	"quantity" BIGINT,
	"price" DECIMAL,
	"customer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "batch_staging" (
	"id" BIGINT,
	"job_id" BIGINT,
	"value" BLOB,
	"processed" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trade_seq" (
	"id" BIGINT
);

CREATE TABLE "batch_staging_seq" (
	"id" BIGINT
);

CREATE TABLE "customer_seq" (
	"id" BIGINT
);
