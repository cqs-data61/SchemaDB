DROP DATABASE IF EXISTS "schema1738";
CREATE DATABASE "schema1738";
USE "schema1738";
CREATE TABLE "subscribers" (
	"id" VARCHAR,
	"last_acknowledged_sequence" INTEGER,
	"last_seen_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "event_streams" (
	"sequence" SERIAL,
	"aggregate" VARCHAR,
	"type" VARCHAR,
	"occurred_at" TIMESTAMP,
	"revision" SMALLINT,
	"payload" LONGTEXT,
	 PRIMARY KEY ("sequence")
);
