DROP DATABASE IF EXISTS "schema229";
CREATE DATABASE "schema229";
USE "schema229";
CREATE TABLE "parties" (
	"id" INTEGER,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidates" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"party_id" INTEGER,
	"industry_connected" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_party" FOREIGN KEY ("party_id") REFERENCES "parties" ("id")
);

CREATE TABLE "voters" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
