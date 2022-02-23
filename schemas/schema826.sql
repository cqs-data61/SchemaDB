DROP DATABASE IF EXISTS "schema826";
CREATE DATABASE "schema826";
USE "schema826";
CREATE TABLE "id_repository" (
	"id" BIGINT,
	"nextallowedid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ors_users" (
	"id" BIGINT,
	"lastupdated" DATETIME,
	"updatecount" INTEGER,
	"description" VARCHAR,
	"name" VARCHAR,
	"active" BIT,
	"hashedpassword" VARCHAR,
	"superuser" BIT,
	"userdata" TEXT,
	"systemdata" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reports" (
	"id" BIGINT,
	"lastupdated" DATETIME,
	"updatecount" INTEGER,
	"brokerid" VARCHAR,
	"reportid" BIGINT,
	"fixmessage" TEXT,
	"originator" INTEGER,
	"reporttype" INTEGER,
	"sendingtime" DATETIME,
	"orderid" VARCHAR,
	"viewer_id" BIGINT,
	"actor_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_reports_viewer_id" FOREIGN KEY ("viewer_id") REFERENCES "ors_users" ("id"),
	 CONSTRAINT "fk_reports_actor_id" FOREIGN KEY ("actor_id") REFERENCES "ors_users" ("id")
);

CREATE TABLE "execreports" (
	"id" BIGINT,
	"lastupdated" DATETIME,
	"updatecount" INTEGER,
	"avgprice" NUMERIC,
	"cumquantity" NUMERIC,
	"lastprice" NUMERIC,
	"lastquantity" NUMERIC,
	"orderid" VARCHAR,
	"viewer_id" BIGINT,
	"orderstatus" INTEGER,
	"origorderid" VARCHAR,
	"rootid" VARCHAR,
	"sendingtime" DATETIME,
	"side" INTEGER,
	"securitytype" INTEGER,
	"symbol" VARCHAR,
	"expiry" VARCHAR,
	"strikeprice" NUMERIC,
	"optiontype" INTEGER,
	"account" VARCHAR,
	"report_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_execreports_report_id" FOREIGN KEY ("report_id") REFERENCES "reports" ("id"),
	 CONSTRAINT "fk_execreports_viewer_id" FOREIGN KEY ("viewer_id") REFERENCES "ors_users" ("id")
);
