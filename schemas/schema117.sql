DROP DATABASE IF EXISTS "schema117";
CREATE DATABASE "schema117";
USE "schema117";
CREATE TABLE "tbl_category" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_post" (
	"id" BIGINT,
	"title" VARCHAR,
	"content" VARCHAR,
	"filepath" VARCHAR,
	"createdat" VARCHAR,
	"updatedat" VARCHAR,
	"category_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tbl_post_to_tbl_category" FOREIGN KEY ("category_id") REFERENCES "tbl_category" ("id")
);
