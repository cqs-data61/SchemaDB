DROP DATABASE IF EXISTS "schema887";
CREATE DATABASE "schema887";
USE "schema887";
CREATE TABLE "notes" (
	"id" SERIAL,
	"title" VARCHAR,
	"body" VARCHAR,
	"date" DATE,
	"book_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" SERIAL,
	"title" VARCHAR,
	"author" VARCHAR,
	"page_count" INTEGER,
	"description" VARCHAR,
	"fiction" BOOLEAN,
	 PRIMARY KEY ("id")
);
