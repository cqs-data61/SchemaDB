DROP DATABASE IF EXISTS "schema417";
CREATE DATABASE "schema417";
USE "schema417";
CREATE TABLE "todoitems" (
	"id" BIGINT,
	"userid" TEXT,
	"title" TEXT,
	"description" TEXT,
	"status" INTEGER,
	"itemorder" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" BIGINT,
	"userid" TEXT,
	"title" TEXT,
	"description" TEXT,
	"eventdate" TIMESTAMP,
	"tags" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "__efmigrationshistory" (
	"migrationid" CHARACTER VARYING,
	"productversion" CHARACTER VARYING,
	 PRIMARY KEY ("migrationid")
);
