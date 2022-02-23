DROP DATABASE IF EXISTS "schema1973";
CREATE DATABASE "schema1973";
USE "schema1973";
CREATE TABLE "genres" (
	"genre_id" BIGINT,
	"genre_name" VARCHAR
);

CREATE TABLE "authors" (
	"author_id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"middle_name" VARCHAR
);

CREATE TABLE "books" (
	"book_id" BIGINT,
	"book_name" VARCHAR,
	"author_id" BIGINT,
	"genre_id" BIGINT
);
