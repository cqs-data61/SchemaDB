DROP DATABASE IF EXISTS "schema2124";
CREATE DATABASE "schema2124";
USE "schema2124";
CREATE TABLE "workouts" (
	"wid" SERIAL,
	"athlete_id" INTEGER,
	"wout_day" TEXT,
	"distance" INTEGER,
	"gain" INTEGER,
	"wout_time" NUMERIC,
	 PRIMARY KEY ("wid")
);

CREATE TABLE "athletes" (
	"aid" SERIAL,
	"aname" TEXT,
	 PRIMARY KEY ("aid")
);
