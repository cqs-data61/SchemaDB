DROP DATABASE IF EXISTS "schema287";
CREATE DATABASE "schema287";
USE "schema287";
CREATE TABLE "subscribers" (
	"id" INT,
	"email_address" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"state" INT,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "field_types" (
	"id" INT,
	"type" VARCHAR,
	"title" VARCHAR,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "field_subscriber" (
	"id" INT,
	"field_type_id" INT,
	"subscriber_id" INT,
	"data" TEXT,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
