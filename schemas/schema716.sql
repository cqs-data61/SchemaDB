DROP DATABASE IF EXISTS "schema716";
CREATE DATABASE "schema716";
USE "schema716";
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
