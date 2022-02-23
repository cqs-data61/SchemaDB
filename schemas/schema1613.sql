DROP DATABASE IF EXISTS "schema1613";
CREATE DATABASE "schema1613";
USE "schema1613";
CREATE TABLE "companies" (
	"id" SERIAL,
	"name" VARCHAR,
	"deleted_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profits" (
	"id" SERIAL,
	"year" CHAR,
	"ying_shou" BIGINT,
	"ying_ye_cheng_ben" BIGINT,
	"fei_ying_shou" BIGINT,
	"li_run" BIGINT,
	"jing_li_run" BIGINT,
	"company_id" BIGINT,
	"deleted_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 CONSTRAINT "fk_profits_companies" FOREIGN KEY ("company_id") REFERENCES "companies" ("id")
);
