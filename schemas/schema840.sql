DROP DATABASE IF EXISTS "schema840";
CREATE DATABASE "schema840";
USE "schema840";
CREATE TABLE "tbl_regions" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_customers" (
	"id" BIGINT,
	"number_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"photo_url" VARCHAR,
	"state" VARCHAR,
	"region_id" BIGINT,
	 PRIMARY KEY ("id")
);
