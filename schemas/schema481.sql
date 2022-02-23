DROP DATABASE IF EXISTS "schema481";
CREATE DATABASE "schema481";
USE "schema481";
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
