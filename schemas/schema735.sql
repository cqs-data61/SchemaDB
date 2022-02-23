DROP DATABASE IF EXISTS "schema735";
CREATE DATABASE "schema735";
USE "schema735";
CREATE TABLE "vacancy" (
	"id" BIGINT,
	"title" CHARACTER VARYING,
	"company_name" CHARACTER VARYING,
	"company_logo" CHARACTER VARYING,
	"salary" CHARACTER VARYING,
	"location" CHARACTER VARYING,
	"site_name" CHARACTER VARYING,
	"url" CHARACTER VARYING,
	"date_vacancy" CHARACTER VARYING,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "eur" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"course" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usd" (
	"id" BIGINT,
	"date" TIMESTAMP,
	"course" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);
