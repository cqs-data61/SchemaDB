DROP DATABASE IF EXISTS "schema1747";
CREATE DATABASE "schema1747";
USE "schema1747";
CREATE TABLE "activitytypes" (
	"id" SERIAL,
	"activitytypename" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "parametertypes" (
	"id" SERIAL,
	"activitytype" INT,
	"parametername" VARCHAR,
	"logicaltype" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_parametertypes_to_activitytypes" FOREIGN KEY ("activitytype") REFERENCES "activitytypes" ("id")
);

CREATE TABLE "workflows" (
	"id" SERIAL,
	"workflowname" VARCHAR,
	"lastrun" TIMESTAMP,
	"nextrun" TIMESTAMP,
	"timestorun" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activities" (
	"id" SERIAL,
	"workflowid" INT,
	"activitytype" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_activities_to_workflows" FOREIGN KEY ("workflowid") REFERENCES "workflows" ("id"),
	 CONSTRAINT "fkeycon_activities_to_activitytypes" FOREIGN KEY ("activitytype") REFERENCES "activitytypes" ("id")
);

CREATE TABLE "parameters" (
	"id" SERIAL,
	"activityid" INT,
	"parametervalue" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_parameters_to_activities" FOREIGN KEY ("activityid") REFERENCES "activities" ("id")
);
