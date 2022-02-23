DROP DATABASE IF EXISTS "schema1713";
CREATE DATABASE "schema1713";
USE "schema1713";
CREATE TABLE "books" (
	"id" INT,
	"name" TEXT,
	"author" TEXT,
	"thresh_lines" INT,
	"thresh_pages" INT,
	"wpp" INT,
	"wpl" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "main" (
	"id" INT,
	"date" DATE,
	"wpm" INT,
	"book_id" TEXT,
	 PRIMARY KEY ("id")
);
