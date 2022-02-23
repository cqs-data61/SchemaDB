DROP DATABASE IF EXISTS "schema1626";
CREATE DATABASE "schema1626";
USE "schema1626";
CREATE TABLE "comments" (
	"id" BIGSERIAL,
	"reply" VARCHAR,
	"book_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" BIGSERIAL,
	"author_id" BIGINT,
	"title" VARCHAR,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGSERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);
