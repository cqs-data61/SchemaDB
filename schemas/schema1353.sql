DROP DATABASE IF EXISTS "schema1353";
CREATE DATABASE "schema1353";
USE "schema1353";
CREATE TABLE "rate" (
	"id" BIGINT,
	"valute_id" VARCHAR,
	"num_code" SMALLINT,
	"char_code" CHAR,
	"nominal" SMALLINT,
	"name" VARCHAR,
	"value" NUMERIC,
	"date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "conversion" (
	"id" BIGINT,
	"source_code" CHAR,
	"source_name" VARCHAR,
	"target_code" CHAR,
	"target_name" VARCHAR,
	"source_amount" NUMERIC,
	"target_amount" NUMERIC,
	"rate_id" BIGINT,
	"converted_at" TIMESTAMP,
	"start_end" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_rate" FOREIGN KEY ("rate_id") REFERENCES "rate" ("id")
);
