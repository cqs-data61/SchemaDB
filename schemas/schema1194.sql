DROP DATABASE IF EXISTS "schema1194";
CREATE DATABASE "schema1194";
USE "schema1194";
CREATE TABLE "schema_migrations" (
	"version" CHARACTER VARYING,
	 PRIMARY KEY ("version")
);

CREATE TABLE "market_price" (
	"id" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"date" DATETIME,
	"market_name" CHARACTER VARYING,
	"price" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);
