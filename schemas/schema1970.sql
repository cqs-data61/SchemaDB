DROP DATABASE IF EXISTS "schema1970";
CREATE DATABASE "schema1970";
USE "schema1970";
CREATE TABLE "geo_alert" (
	"id" INTEGER,
	"featureid" VARCHAR,
	"lat" FLOAT,
	"lon" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "common_alert" (
	"alertid" INTEGER,
	"title" VARCHAR,
	"created" DATE,
	"receipient" VARCHAR,
	"classification" VARCHAR,
	"appsrc" VARCHAR,
	"acked" BOOLEAN,
	 PRIMARY KEY ("alertid")
);
