DROP DATABASE IF EXISTS "schema2198";
CREATE DATABASE "schema2198";
USE "schema2198";
CREATE TABLE "comments" (
	"id" BIGINT,
	"comment" VARCHAR,
	"book_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" BIGINT,
	"genre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" BIGINT,
	"title" VARCHAR,
	"author_id" BIGINT,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_books_to_genres" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id"),
	 CONSTRAINT "fkeycon_books_to_authors" FOREIGN KEY ("author_id") REFERENCES "authors" ("id")
);
