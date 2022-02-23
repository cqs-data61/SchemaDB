DROP DATABASE IF EXISTS "schema992";
CREATE DATABASE "schema992";
USE "schema992";
CREATE TABLE "scan_progress" (
	"id" SERIAL,
	"type" VARCHAR,
	"scanned_up_to_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_address_mapping" (
	"id" SERIAL,
	"post_number" INTEGER,
	"account_index" INTEGER,
	"address_index" INTEGER,
	"subaddress" VARCHAR,
	 PRIMARY KEY ("id")
);
