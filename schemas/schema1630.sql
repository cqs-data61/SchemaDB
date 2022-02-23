DROP DATABASE IF EXISTS "schema1630";
CREATE DATABASE "schema1630";
USE "schema1630";
CREATE TABLE "books" (
	"id" SERIAL,
	"title" VARCHAR,
	"publication_date" INTEGER,
	"author_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" SERIAL,
	"name" VARCHAR,
	"nationality" VARCHAR,
	"birth_year" INTEGER,
	 PRIMARY KEY ("id")
);
