DROP DATABASE IF EXISTS "schema514";
CREATE DATABASE "schema514";
USE "schema514";
CREATE TABLE "bins" (
	"id" SERIAL,
	"bin_endpoint" VARCHAR,
	"created_at" TIMESTAMP,
	"is_expired" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "requests" (
	"id" SERIAL,
	"bins_id" VARCHAR,
	"payload" LONGTEXT,
	"method" TEXT,
	"headers" LONGTEXT,
	"received_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_requests_to_bins" FOREIGN KEY ("bins_id") REFERENCES "bins" ("bin_endpoint")
);
