DROP DATABASE IF EXISTS "schema1923";
CREATE DATABASE "schema1923";
USE "schema1923";
CREATE TABLE "pluginendpoints" (
	"id" INTEGER,
	"url" TEXT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "experiment" (
	"experimentid" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("experimentid")
);

CREATE TABLE "timelinestep" (
	"stepid" INTEGER,
	"experimentid" INTEGER,
	"sequence" INTEGER,
	"start" DATETIME,
	"end" DATETIME,
	"status" VARCHAR,
	"resultlog" TEXT,
	"processorname" VARCHAR,
	"processorversion" VARCHAR,
	"processorlocation" TEXT,
	"parameters" TEXT,
	"parameterscontenttype" VARCHAR,
	"parametersdescriptionlocation" TEXT,
	"notes" TEXT,
	 PRIMARY KEY ("stepid"),
	 CONSTRAINT "fkeycon_timelinestep_to_experiment" FOREIGN KEY ("experimentid") REFERENCES "experiment" ("experimentid")
);

CREATE TABLE "resultwatchers" (
	"stepid" INTEGER,
	"resultendpoint" TEXT,
	 PRIMARY KEY ("stepid"),
	 CONSTRAINT "fkeycon_resultwatchers_to_timelinestep" FOREIGN KEY ("stepid") REFERENCES "timelinestep" ("stepid")
);

CREATE TABLE "experimentdata" (
	"dataid" INTEGER,
	"experimentid" INTEGER,
	"name" VARCHAR,
	"version" INTEGER,
	"location" TEXT,
	"type" VARCHAR,
	"contenttype" VARCHAR,
	 PRIMARY KEY ("dataid"),
	 CONSTRAINT "fkeycon_experimentdata_to_experiment" FOREIGN KEY ("experimentid") REFERENCES "experiment" ("experimentid")
);

CREATE TABLE "stepdata" (
	"id" INTEGER,
	"stepid" INTEGER,
	"dataid" INTEGER,
	"relationtype" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_stepdata_to_timelinestep" FOREIGN KEY ("stepid") REFERENCES "timelinestep" ("stepid"),
	 CONSTRAINT "fkeycon_stepdata_to_experimentdata" FOREIGN KEY ("dataid") REFERENCES "experimentdata" ("dataid")
);
