DROP DATABASE IF EXISTS "schema37";
CREATE DATABASE "schema37";
USE "schema37";
CREATE TABLE "aggregates" (
	"id" VARCHAR,
	"type" TEXT,
	"version" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "snapshots" (
	"aggregate_id" VARCHAR,
	"aggregate_type" TEXT,
	"aggregate_version" INTEGER,
	"payload" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 CONSTRAINT "snapshots_aggregate_id_foreign" FOREIGN KEY ("aggregate_id") REFERENCES "aggregates" ("id")
);

CREATE TABLE "events" (
	"aggregate_id" VARCHAR,
	"aggregate_type" TEXT,
	"id" VARCHAR,
	"payload" LONGTEXT,
	"version" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "events_aggregate_id_foreign" FOREIGN KEY ("aggregate_id") REFERENCES "aggregates" ("id")
);

CREATE TABLE "tariff" (
	"id" VARCHAR,
	"name" VARCHAR,
	"payload" LONGTEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"tariff_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "account_tariff_id_foreign" FOREIGN KEY ("tariff_id") REFERENCES "tariff" ("id")
);
