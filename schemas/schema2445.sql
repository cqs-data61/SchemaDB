DROP DATABASE IF EXISTS "schema2445";
CREATE DATABASE "schema2445";
USE "schema2445";
CREATE TABLE "summaryview" (
	"index" INTEGER,
	"year" INTEGER,
	"city" VARCHAR,
	"type" VARCHAR,
	"duration" DECIMAL,
	"avg_perc_year" DECIMAL,
	"lat" DECIMAL,
	"lng" DECIMAL,
	 PRIMARY KEY ("index")
);

CREATE TABLE "weatherhist" (
	"eventid" VARCHAR,
	"type" VARCHAR,
	"severity" VARCHAR,
	"starttime" DATE,
	"endtime" DATE,
	"timezone" VARCHAR,
	"lat" DECIMAL,
	"lng" DECIMAL,
	"city" VARCHAR,
	"state" VARCHAR,
	"duration" DECIMAL,
	"year" INTEGER,
	 PRIMARY KEY ("eventid")
);
