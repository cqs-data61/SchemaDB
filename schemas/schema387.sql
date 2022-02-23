DROP DATABASE IF EXISTS "schema387";
CREATE DATABASE "schema387";
USE "schema387";
CREATE TABLE "locations" (
	"id" BINARY,
	"zoneid" SMALLINT,
	"name" NVARCHAR,
	"lat" FLOAT,
	"lng" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "zones" (
	"id" SMALLINT,
	"expansionid" TINYINT,
	"name" NVARCHAR
);

CREATE TABLE "expansions" (
	"id" TINYINT,
	"mapid" TINYINT,
	"name" NVARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "maps" (
	"id" TINYINT,
	"name" NVARCHAR,
	 PRIMARY KEY ("id")
);
