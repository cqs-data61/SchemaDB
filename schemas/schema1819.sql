DROP DATABASE IF EXISTS "schema1819";
CREATE DATABASE "schema1819";
USE "schema1819";
CREATE TABLE "subscription" (
	"id" BIGSERIAL,
	"end_datetime" TIMESTAMP,
	"is_canceled" BOOLEAN,
	"is_paused" BOOLEAN,
	"paused_datetime" TIMESTAMP,
	"remaining_duration_after_paused_in_min" BIGINT,
	"start_datetime" TIMESTAMP,
	"trial_start_datetime" TIMESTAMP,
	"product_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"price" NUMERIC,
	"duration" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_account" (
	"id" BIGSERIAL,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("id")
);
