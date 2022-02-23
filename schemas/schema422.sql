DROP DATABASE IF EXISTS "schema422";
CREATE DATABASE "schema422";
USE "schema422";
CREATE TABLE "genres" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGSERIAL,
	"fullname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	"author_id" BIGINT,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_books_to_genres" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id"),
	 CONSTRAINT "fkeycon_books_to_authors" FOREIGN KEY ("author_id") REFERENCES "authors" ("id")
);
