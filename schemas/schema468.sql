DROP DATABASE IF EXISTS "schema468";
CREATE DATABASE "schema468";
USE "schema468";
CREATE TABLE "public_holidays" (
	"year" INTEGER,
	"date" TEXT
);

CREATE TABLE "notifications" (
	"id" INTEGER,
	"email" TEXT,
	"dec_first" TEXT,
	"dec_sur" TEXT,
	"dec_strict" INTEGER,
	"dec" TEXT,
	"party_first" TEXT,
	"party_sur" TEXT,
	"party_strict" INTEGER,
	"party" TEXT,
	"start_year" INTEGER,
	"start" INTEGER,
	"end_year" INTEGER,
	"end" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"event" TEXT,
	"time" TEXT
);

CREATE TABLE "matters" (
	"type" TEXT,
	"number" INTEGER,
	"year" INTEGER,
	"title" TEXT,
	"deceased_name" TEXT,
	"flags" TEXT,
	 PRIMARY KEY ("type","number","year")
);

CREATE TABLE "parties" (
	"party_name" TEXT,
	"type" TEXT,
	"number" INTEGER,
	"year" INTEGER,
	 CONSTRAINT "fkeycon_parties_to_matters" FOREIGN KEY ("type","number","year") REFERENCES "matters" ("type","number","year")
);
