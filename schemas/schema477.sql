DROP DATABASE IF EXISTS "schema477";
CREATE DATABASE "schema477";
USE "schema477";
CREATE TABLE "genres" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_books_to_genres" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);

CREATE TABLE "comments" (
	"id" BIGSERIAL,
	"text" VARCHAR,
	"book_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_books" FOREIGN KEY ("book_id") REFERENCES "books" ("id")
);

CREATE TABLE "authors" (
	"id" BIGSERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"middle_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book_authors" (
	"id" BIGSERIAL,
	"book_id" BIGINT,
	"author_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_book" FOREIGN KEY ("book_id") REFERENCES "books" ("id"),
	 CONSTRAINT "fk_author" FOREIGN KEY ("author_id") REFERENCES "authors" ("id")
);
