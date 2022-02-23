DROP DATABASE IF EXISTS "schema354";
CREATE DATABASE "schema354";
USE "schema354";
CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"passwd" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "items" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"startingprice" NUMERIC,
	"starttime" TIMESTAMP,
	"endtime" TIMESTAMP,
	"seller" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_items_to_users" FOREIGN KEY ("seller") REFERENCES "users" ("id")
);

CREATE TABLE "bids" (
	"id" SERIAL,
	"bidder" INTEGER,
	"item" INTEGER,
	"attempt" INTEGER,
	"amount" NUMERIC,
	"time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bids_to_items" FOREIGN KEY ("item") REFERENCES "items" ("id"),
	 CONSTRAINT "fkeycon_bids_to_users" FOREIGN KEY ("bidder") REFERENCES "users" ("id")
);
