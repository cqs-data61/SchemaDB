DROP DATABASE IF EXISTS "schema2080";
CREATE DATABASE "schema2080";
USE "schema2080";
CREATE TABLE "wizards" (
	"id" SERIAL,
	"title" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" SERIAL,
	"title" VARCHAR,
	"page_count" INTEGER,
	"description" VARCHAR,
	"fiction" BOOLEAN,
	 PRIMARY KEY ("id")
);
