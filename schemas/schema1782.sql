DROP DATABASE IF EXISTS "schema1782";
CREATE DATABASE "schema1782";
USE "schema1782";
CREATE TABLE "workouts" (
	"wid" SERIAL,
	"athlete_id" INTEGER,
	"wout_day" TEXT,
	"distance" INTEGER,
	"gain" INTEGER,
	"wout_time" NUMERIC,
	 PRIMARY KEY ("wid")
);

CREATE TABLE "useraccounts" (
	"userid" SERIAL,
	"aname" TEXT,
	"pass" TEXT,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "athletes" (
	"aid" SERIAL,
	"aname" TEXT,
	 PRIMARY KEY ("aid")
);
