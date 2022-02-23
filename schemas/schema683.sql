DROP DATABASE IF EXISTS "schema683";
CREATE DATABASE "schema683";
USE "schema683";
CREATE TABLE "z26" (
	"name" VARCHAR,
	"value" VARCHAR
);

CREATE TABLE "social_item" (
	"id" INT,
	"uid" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"type" ENUM,
	"additional" TEXT,
	"timestamp" DATETIME
);

CREATE TABLE "sba_inactivity_tracking" (
	"user_id" BIGINT,
	"last_message" DATETIME,
	"warning_timestamp" DATETIME
);

CREATE TABLE "role_member" (
	"id" INT,
	"member_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "message" (
	"id" INT,
	"message" VARCHAR
);

CREATE TABLE "ltp" (
	"user_id" BIGINT,
	"timestamp" DATETIME
);

CREATE TABLE "job" (
	"id" INT,
	"name" VARCHAR,
	"last_execution" DATETIME
);

CREATE TABLE "feature_status" (
	"id" INT,
	"name" VARCHAR,
	"enabled" TINYINT
);

CREATE TABLE "faq" (
	"id" INT,
	"regex" VARCHAR,
	"message" VARCHAR
);

CREATE TABLE "censor" (
	"id" INT,
	"pattern" VARCHAR
);
