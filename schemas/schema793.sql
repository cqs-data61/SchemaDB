DROP DATABASE IF EXISTS "schema793";
CREATE DATABASE "schema793";
USE "schema793";
CREATE TABLE "sleep" (
	"id" INTEGER,
	"date" TEXT,
	"duration" INTEGER,
	"start_time" TEXT,
	"end_time" TEXT,
	"minutes_asleep" INTEGER,
	"minutes_awake" INTEGER,
	"time_in_bed" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sleep_raw" (
	"id" INTEGER,
	"date" TEXT,
	"provider" TEXT,
	"data" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tokens" (
	"service" VARCHAR,
	"access_token" TEXT,
	"refresh_token" TEXT,
	 PRIMARY KEY ("service")
);
