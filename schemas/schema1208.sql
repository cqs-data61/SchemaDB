DROP DATABASE IF EXISTS "schema1208";
CREATE DATABASE "schema1208";
USE "schema1208";
CREATE TABLE "link" (
	"id" BIGINT,
	"created_by" VARCHAR,
	"creation_date" DATETIME,
	"last_modified_by" VARCHAR,
	"last_modified_date" DATETIME,
	"title" VARCHAR,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" BIGINT,
	"created_by" VARCHAR,
	"creation_date" DATETIME,
	"last_modified_by" VARCHAR,
	"last_modified_date" DATETIME,
	"body" VARCHAR,
	"link_id" BIGINT,
	 PRIMARY KEY ("id")
);
