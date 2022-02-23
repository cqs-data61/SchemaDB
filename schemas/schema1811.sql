DROP DATABASE IF EXISTS "schema1811";
CREATE DATABASE "schema1811";
USE "schema1811";
CREATE TABLE "book" (
	"id" INTEGER,
	"isbn" TEXT,
	"title" TEXT,
	"author" TEXT,
	"publisher" TEXT,
	"request" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"text" TEXT,
	"book_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_book" FOREIGN KEY ("book_id") REFERENCES "book" ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
