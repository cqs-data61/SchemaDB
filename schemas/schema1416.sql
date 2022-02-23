DROP DATABASE IF EXISTS "schema1416";
CREATE DATABASE "schema1416";
USE "schema1416";
CREATE TABLE "bookreader" (
	"id" BIGINT,
	"book_id" BIGINT,
	"reader_id" BIGINT
);

CREATE TABLE "reader" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "book" (
	"id" BIGINT,
	"title" VARCHAR,
	"author" VARCHAR
);
