DROP DATABASE IF EXISTS "schema325";
CREATE DATABASE "schema325";
USE "schema325";
CREATE TABLE "ticker" (
	"id" INT,
	"name" VARCHAR,
	"symbol" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "stock" (
	"id" INT,
	"date" DATE,
	"close/last" DECIMAL,
	"open" DECIMAL,
	"high" DECIMAL,
	"low" DECIMAL,
	 PRIMARY KEY ("id")
);
