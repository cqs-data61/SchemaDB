DROP DATABASE IF EXISTS "schema1570";
CREATE DATABASE "schema1570";
USE "schema1570";
CREATE TABLE "book" (
	"id" VARCHAR,
	"title" VARCHAR,
	"published" INTEGER,
	"language" VARCHAR,
	"author_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
