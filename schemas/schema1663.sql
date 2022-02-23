DROP DATABASE IF EXISTS "schema1663";
CREATE DATABASE "schema1663";
USE "schema1663";
CREATE TABLE "vote" (
	"id" SERIAL,
	"value" INT,
	"book_id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" SERIAL,
	"name" VARCHAR,
	"content" BYTEA,
	"page_count" INT,
	"isbn" VARCHAR,
	"genre_id" INT,
	"author_id" INT,
	"publisher_year" INT,
	"publisher_id" INT,
	"image" BYTEA,
	"avg_rating" INT,
	"total_vote_count" INT,
	"total_rating" INT,
	"view_count" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publisher" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genre" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" SERIAL,
	"fio" VARCHAR,
	"birthday" DATE,
	 PRIMARY KEY ("id")
);
