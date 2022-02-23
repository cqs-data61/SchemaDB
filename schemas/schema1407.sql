DROP DATABASE IF EXISTS "schema1407";
CREATE DATABASE "schema1407";
USE "schema1407";
CREATE TABLE "users" (
	"id" BIGINT,
	"role" VARCHAR2,
	"login" VARCHAR2,
	"password_hash" VARCHAR2,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"text" VARCHAR2,
	"book_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors_books" (
	"author_id" BIGINT,
	"book_id" BIGINT,
	 PRIMARY KEY ("author_id","book_id")
);

CREATE TABLE "books" (
	"id" BIGINT,
	"title" VARCHAR2,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" BIGINT,
	"name" VARCHAR2,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGINT,
	"name" VARCHAR2,
	"surname" VARCHAR2,
	"phone" VARCHAR2,
	 PRIMARY KEY ("id")
);
