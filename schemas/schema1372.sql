DROP DATABASE IF EXISTS "schema1372";
CREATE DATABASE "schema1372";
USE "schema1372";
CREATE TABLE "hibernate_sequence" (
	"next_val" BIGINT
);

CREATE TABLE "user_account" (
	"id" INTEGER,
	"version" INTEGER,
	"enabled" BIT,
	"identity_email" VARCHAR,
	"identity_name" VARCHAR,
	"identity_surname" VARCHAR,
	"password" VARCHAR,
	"username" VARCHAR
);

CREATE TABLE "sysconfig" (
	"id" INTEGER,
	"version" INTEGER,
	"spamwords" VARCHAR,
	"threshold" DOUBLE
);

CREATE TABLE "request" (
	"id" INTEGER,
	"version" INTEGER,
	"creation_moment" DATETIME,
	"deadline" DATETIME,
	"reward_amount" DOUBLE,
	"reward_currency" VARCHAR,
	"text" VARCHAR,
	"ticker" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "provider" (
	"id" INTEGER,
	"version" INTEGER,
	"user_account_id" INTEGER,
	"company" VARCHAR,
	"sector" VARCHAR
);

CREATE TABLE "offer" (
	"id" INTEGER,
	"version" INTEGER,
	"dead_line" DATETIME,
	"moment" DATETIME,
	"offer_amount" DOUBLE,
	"offer_currency" VARCHAR,
	"text" VARCHAR,
	"ticker" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "non_commercial_banner" (
	"id" INTEGER,
	"version" INTEGER,
	"jingle" VARCHAR,
	"picture" VARCHAR,
	"slogan" VARCHAR,
	"targeturl" VARCHAR
);

CREATE TABLE "investor" (
	"id" INTEGER,
	"version" INTEGER,
	"investing_statement" VARCHAR,
	"name" VARCHAR,
	"sector" VARCHAR,
	"star" INTEGER
);

CREATE TABLE "consumer" (
	"id" INTEGER,
	"version" INTEGER,
	"user_account_id" INTEGER,
	"company" VARCHAR,
	"sector" VARCHAR
);

CREATE TABLE "comprecord" (
	"id" INTEGER,
	"version" INTEGER,
	"activdescription" VARCHAR,
	"ceoname" VARCHAR,
	"companyname" VARCHAR,
	"email" VARCHAR,
	"incorporated" BIT,
	"phone" VARCHAR,
	"rating" VARCHAR,
	"sector" VARCHAR,
	"website" VARCHAR
);

CREATE TABLE "commercial_banner" (
	"id" INTEGER,
	"version" INTEGER,
	"credit_card" VARCHAR,
	"picture" VARCHAR,
	"slogan" VARCHAR,
	"targeturl" VARCHAR
);

CREATE TABLE "challenge" (
	"id" INTEGER,
	"version" INTEGER,
	"deadline" DATETIME,
	"description" VARCHAR,
	"goal_bronze" VARCHAR,
	"goal_gold" VARCHAR,
	"goal_silver" VARCHAR,
	"moment" DATETIME,
	"reward_bronze_amount" DOUBLE,
	"reward_bronze_currency" VARCHAR,
	"reward_gold_amount" DOUBLE,
	"reward_gold_currency" VARCHAR,
	"reward_silver_amount" DOUBLE,
	"reward_silver_currency" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "authenticated" (
	"id" INTEGER,
	"version" INTEGER,
	"user_account_id" INTEGER
);

CREATE TABLE "anonymous" (
	"id" INTEGER,
	"version" INTEGER,
	"user_account_id" INTEGER
);

CREATE TABLE "announcement" (
	"id" INTEGER,
	"version" INTEGER,
	"moment" DATETIME,
	"more_info" VARCHAR,
	"text" VARCHAR,
	"title" VARCHAR
);

CREATE TABLE "administrator" (
	"id" INTEGER,
	"version" INTEGER,
	"user_account_id" INTEGER
);
