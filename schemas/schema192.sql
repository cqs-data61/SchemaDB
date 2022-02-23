DROP DATABASE IF EXISTS "schema192";
CREATE DATABASE "schema192";
USE "schema192";
CREATE TABLE "events" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"domain_event" VARCHAR,
	"aggregate_root" VARCHAR,
	"occurred_at" TIMESTAMP
);

CREATE TABLE "high_low_playing_context" (
	"id" BIGSERIAL,
	"game_id" BIGINT,
	"user_name" VARCHAR,
	"start_at" TIMESTAMP,
	"state" VARCHAR,
	"target" BIGINT,
	"score" INTEGER,
	"version" BIGINT
);

CREATE TABLE "ranking_item" (
	"ranking_id" BIGINT,
	"ranking_key" INTEGER,
	"user_name" VARCHAR,
	"score" INTEGER,
	"ranked_at" TIMESTAMP
);

CREATE TABLE "ranking" (
	"id" BIGSERIAL,
	"size" INTEGER,
	"version" BIGINT
);
