DROP DATABASE IF EXISTS "schema1287";
CREATE DATABASE "schema1287";
USE "schema1287";
CREATE TABLE "inbound_detail" (
	"id" INT,
	"inbound_id" INT,
	"item_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inbound" (
	"id" INT,
	"po_number" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
