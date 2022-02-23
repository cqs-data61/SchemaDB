DROP DATABASE IF EXISTS "schema1252";
CREATE DATABASE "schema1252";
USE "schema1252";
CREATE TABLE "offices" (
	"id" BIGINT,
	"address" VARCHAR,
	"owner" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cars" (
	"id" BIGINT,
	"office_id" BIGINT,
	"brand" VARCHAR,
	"model" VARCHAR,
	"vin" VARCHAR,
	"color" VARCHAR,
	"power" SMALLINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_cars_to_offices" FOREIGN KEY ("office_id") REFERENCES "offices" ("id")
);
