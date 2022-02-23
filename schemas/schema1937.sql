DROP DATABASE IF EXISTS "schema1937";
CREATE DATABASE "schema1937";
USE "schema1937";
CREATE TABLE "some_entity" (
	"id" BIGINT,
	"something" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" BIGINT,
	"title" VARCHAR,
	"pages" INT,
	"author_id" BIGINT,
	 PRIMARY KEY ("id")
);
