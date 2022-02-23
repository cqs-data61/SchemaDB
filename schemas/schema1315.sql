DROP DATABASE IF EXISTS "schema1315";
CREATE DATABASE "schema1315";
USE "schema1315";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"password" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"text" VARCHAR,
	"book_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGINT,
	"full_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
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
	 CONSTRAINT "AUTHOR_ID_FK" FOREIGN KEY ("author_id") REFERENCES "authors" ("id"),
	 CONSTRAINT "GENRE_ID_FL" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id")
);
