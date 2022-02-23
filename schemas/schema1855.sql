DROP DATABASE IF EXISTS "schema1855";
CREATE DATABASE "schema1855";
USE "schema1855";
CREATE TABLE "comment" (
	"id" BIGINT,
	"post_id" BIGINT,
	"content" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" BIGINT,
	"title" VARCHAR,
	"content" VARCHAR,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
