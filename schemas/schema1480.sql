DROP DATABASE IF EXISTS "schema1480";
CREATE DATABASE "schema1480";
USE "schema1480";
CREATE TABLE "report" (
	"id" INT,
	"timestamp" DATETIME,
	"email" VARCHAR,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reassign" (
	"id" INT,
	"timestamp" DATETIME,
	"chaser_id" VARCHAR,
	"fname" VARCHAR,
	"valid" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "opt_out" (
	"id" INT,
	"timestamp" DATETIME,
	"email" VARCHAR,
	"reasons" LONGTEXT,
	"valid" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "caught" (
	"id" INT,
	"timestamp" DATETIME,
	"chaser_id" VARCHAR,
	"runner_id" VARCHAR,
	"valid" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "all_players" (
	"id" INT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"email" VARCHAR,
	"form" VARCHAR,
	"year_level" INT,
	"house" VARCHAR,
	"chaser_id" VARCHAR,
	"runner_id" VARCHAR,
	"game_status" VARCHAR,
	"chaser_count" INT,
	"caught_count" INT,
	"reassign_count" INT,
	 PRIMARY KEY ("id")
);
