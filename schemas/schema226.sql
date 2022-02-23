DROP DATABASE IF EXISTS "schema226";
CREATE DATABASE "schema226";
USE "schema226";
CREATE TABLE "accidents_rules" (
	"accident_id" INTEGER,
	"rule_id" INTEGER
);

CREATE TABLE "accident" (
	"id" SERIAL,
	"name" VARCHAR,
	"text" TEXT,
	"address" TEXT,
	"accident_type_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rule" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accident_type" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
