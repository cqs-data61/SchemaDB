DROP DATABASE IF EXISTS "schema1333";
CREATE DATABASE "schema1333";
USE "schema1333";
CREATE TABLE "books" (
	"id" INT,
	"author" VARCHAR,
	"title" VARCHAR,
	"priceold" VARCHAR,
	"price" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
