DROP DATABASE IF EXISTS "schema1087";
CREATE DATABASE "schema1087";
USE "schema1087";
CREATE TABLE "post" (
	"id" BIGINT,
	"title" VARCHAR,
	"slug" VARCHAR,
	"teaser" VARCHAR,
	"body" VARCHAR,
	"posted_on" TIMESTAMP,
	"author_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
