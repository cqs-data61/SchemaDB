DROP DATABASE IF EXISTS "schema1940";
CREATE DATABASE "schema1940";
USE "schema1940";
CREATE TABLE "users" (
	"id" VARCHAR,
	"email" TEXT,
	"password_hash" TEXT,
	"locked_at" DATETIME,
	"failed_login_attempts" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" VARCHAR,
	"title" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "co2_emitters" (
	"id" VARCHAR,
	"title" TEXT,
	"description" TEXT,
	"category_id" VARCHAR,
	"g_co2e" INT,
	"per" INT,
	"unit" ENUM,
	"source" TEXT,
	"image" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "co2_emitters_ref_category_id" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
