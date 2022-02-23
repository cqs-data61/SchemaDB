DROP DATABASE IF EXISTS "schema809";
CREATE DATABASE "schema809";
USE "schema809";
CREATE TABLE "tbl_customers" (
	"id" BIGINT,
	"number_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"photo_url" VARCHAR,
	"region_id" BIGINT,
	"state" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_regions" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
