DROP DATABASE IF EXISTS "schema1698";
CREATE DATABASE "schema1698";
USE "schema1698";
CREATE TABLE "weights" (
	"id" INT,
	"value" INT,
	"timestamp" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "settings" (
	"id" INT,
	"preferences" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schedule" (
	"id" INT,
	"feedtime" VARCHAR,
	"amount" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "logs" (
	"id" INT,
	"timestamp" DATETIME,
	"amount" VARCHAR,
	"trigger" VARCHAR,
	 PRIMARY KEY ("id")
);
