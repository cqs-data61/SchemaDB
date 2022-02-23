DROP DATABASE IF EXISTS "schema656";
CREATE DATABASE "schema656";
USE "schema656";
CREATE TABLE "sampleresultinfo" (
	"id" INT,
	"timestamp" TIMESTAMP,
	"samplerlabel" VARCHAR,
	"meantime" INT,
	"mintime" INT,
	"maxtime" INT,
	"standarddeviation" DOUBLE,
	"errorpercentage" INT,
	"requestrate" DOUBLE,
	"receivekbpersecond" DOUBLE,
	"sentkbpersecond" DOUBLE,
	"avgpagebytes" DOUBLE,
	"threadcount" INT,
	"resultid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scenarioresultinfo" (
	"id" INT,
	"scenarioname" VARCHAR,
	"numthreads" INT,
	"rampup" INT,
	"duration" INT,
	"runtime" DATETIME,
	"scenarioid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paramfileinfo" (
	"id" INT,
	"paramfilename" VARCHAR,
	"paramfilepath" VARCHAR,
	"uploadtime" DATETIME,
	"scenarioid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scriptfileinfo" (
	"id" INT,
	"scriptfilename" VARCHAR,
	"scriptfilepath" VARCHAR,
	"uploadtime" DATETIME,
	"scenarioid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scenarioinfo" (
	"id" INT,
	"scenarioname" VARCHAR,
	"createtime" DATETIME,
	"numthreads" INT,
	"rampup" INT,
	"duration" INT,
	"scenariodescription" TEXT,
	 PRIMARY KEY ("id")
);
