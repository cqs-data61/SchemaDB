DROP DATABASE IF EXISTS "schema1524";
CREATE DATABASE "schema1524";
USE "schema1524";
CREATE TABLE "whitelist" (
	"id" INT,
	"ckey" TEXT,
	"race" TEXT
);

CREATE TABLE "ranks" (
	"rank" INT,
	"desc" TEXT
);

CREATE TABLE "population" (
	"id" INT,
	"playercount" INT,
	"admincount" INT,
	"time" DATETIME
);

CREATE TABLE "library" (
	"id" INT,
	"author" TEXT,
	"title" TEXT,
	"content" TEXT,
	"category" TEXT
);

CREATE TABLE "erro_privacy" (
	"id" INT,
	"datetime" DATETIME,
	"ckey" VARCHAR,
	"option" VARCHAR
);

CREATE TABLE "erro_poll_vote" (
	"id" INT,
	"datetime" DATETIME,
	"pollid" INT,
	"optionid" INT,
	"ckey" VARCHAR,
	"ip" VARCHAR,
	"adminrank" VARCHAR,
	"rating" INT
);

CREATE TABLE "erro_poll_textreply" (
	"id" INT,
	"datetime" DATETIME,
	"pollid" INT,
	"ckey" VARCHAR,
	"ip" VARCHAR,
	"replytext" TEXT,
	"adminrank" VARCHAR
);

CREATE TABLE "erro_poll_question" (
	"id" INT,
	"polltype" VARCHAR,
	"starttime" DATETIME,
	"endtime" DATETIME,
	"question" VARCHAR,
	"adminonly" TINYINT
);

CREATE TABLE "erro_poll_option" (
	"id" INT,
	"pollid" INT,
	"text" VARCHAR,
	"percentagecalc" TINYINT,
	"minval" INT,
	"maxval" INT,
	"descmin" VARCHAR,
	"descmid" VARCHAR,
	"descmax" VARCHAR
);

CREATE TABLE "erro_player" (
	"id" INT,
	"ckey" VARCHAR,
	"firstseen" DATETIME,
	"lastseen" DATETIME,
	"ip" VARCHAR,
	"computerid" VARCHAR,
	"lastadminrank" VARCHAR
);

CREATE TABLE "erro_feedback" (
	"id" INT,
	"time" DATETIME,
	"round_id" INT,
	"var_name" VARCHAR,
	"var_value" INT,
	"details" TEXT
);

CREATE TABLE "erro_ban" (
	"id" INT,
	"bantime" DATETIME,
	"serverip" VARCHAR,
	"bantype" VARCHAR,
	"reason" TEXT,
	"job" VARCHAR,
	"duration" INT,
	"rounds" INT,
	"expiration_time" DATETIME,
	"ckey" VARCHAR,
	"computerid" VARCHAR,
	"ip" VARCHAR,
	"a_ckey" VARCHAR,
	"a_computerid" VARCHAR,
	"a_ip" VARCHAR,
	"who" TEXT,
	"adminwho" TEXT,
	"edits" TEXT,
	"unbanned" TINYINT,
	"unbanned_datetime" DATETIME,
	"unbanned_ckey" VARCHAR,
	"unbanned_computerid" VARCHAR,
	"unbanned_ip" VARCHAR
);

CREATE TABLE "erro_admin_log" (
	"id" INT,
	"datetime" DATETIME,
	"adminckey" VARCHAR,
	"adminip" VARCHAR,
	"log" TEXT
);

CREATE TABLE "erro_admin" (
	"id" INT,
	"ckey" VARCHAR,
	"rank" VARCHAR,
	"level" INT,
	"flags" INT
);

CREATE TABLE "death" (
	"id" INT,
	"pod" TEXT,
	"coord" TEXT,
	"tod" DATETIME,
	"job" TEXT,
	"special" TEXT,
	"name" TEXT,
	"byondkey" TEXT,
	"laname" TEXT,
	"lakey" TEXT,
	"gender" TEXT,
	"bruteloss" INT,
	"brainloss" INT,
	"fireloss" INT,
	"oxyloss" INT
);
