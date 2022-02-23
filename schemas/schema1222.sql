DROP DATABASE IF EXISTS "schema1222";
CREATE DATABASE "schema1222";
USE "schema1222";
CREATE TABLE "erro_privacy" (
	"id" INT,
	"datetime" DATETIME,
	"ckey" VARCHAR,
	"option" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_poll_vote" (
	"id" INT,
	"datetime" DATETIME,
	"pollid" INT,
	"optionid" INT,
	"ckey" VARCHAR,
	"ip" VARCHAR,
	"adminrank" VARCHAR,
	"rating" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_poll_textreply" (
	"id" INT,
	"datetime" DATETIME,
	"pollid" INT,
	"ckey" VARCHAR,
	"ip" VARCHAR,
	"replytext" TEXT,
	"adminrank" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_poll_question" (
	"id" INT,
	"polltype" VARCHAR,
	"starttime" DATETIME,
	"endtime" DATETIME,
	"question" VARCHAR,
	"adminonly" TINYINT,
	 PRIMARY KEY ("id")
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
	"descmax" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_player" (
	"id" INT,
	"ckey" VARCHAR,
	"firstseen" DATETIME,
	"lastseen" DATETIME,
	"ip" VARCHAR,
	"computerid" VARCHAR,
	"lastadminrank" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_feedback" (
	"id" INT,
	"time" DATETIME,
	"round_id" INT,
	"var_name" VARCHAR,
	"var_value" INT,
	"details" TEXT,
	 PRIMARY KEY ("id")
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
	"unbanned_ip" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_admin_log" (
	"id" INT,
	"datetime" DATETIME,
	"adminckey" VARCHAR,
	"adminip" VARCHAR,
	"log" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "erro_admin" (
	"id" INT,
	"ckey" VARCHAR,
	"rank" VARCHAR,
	"level" INT,
	"flags" INT,
	 PRIMARY KEY ("id")
);
