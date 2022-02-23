DROP DATABASE IF EXISTS "schema36";
CREATE DATABASE "schema36";
USE "schema36";
CREATE TABLE "match" (
	"id" BIGINT,
	"description" VARCHAR,
	"match_date" DATE,
	"match_time" TIME,
	"team_a" VARCHAR,
	"team_b" VARCHAR,
	"sport" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "matchodds" (
	"id" BIGINT,
	"match_id" BIGSERIAL,
	"specifier" CHAR,
	"odd" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_matchodds_to_match" FOREIGN KEY ("match_id") REFERENCES "match" ("id")
);
