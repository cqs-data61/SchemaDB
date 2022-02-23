DROP DATABASE IF EXISTS "schema233";
CREATE DATABASE "schema233";
USE "schema233";
CREATE TABLE "ratings" (
	"id" SERIAL,
	"user_id" INTEGER,
	"book_id" INTEGER,
	"star_rating" INTEGER,
	"review" TEXT,
	"rating_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookshelf_books" (
	"id" SERIAL,
	"user_id" INTEGER,
	"book_id" INTEGER,
	"progress" INTEGER,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" SERIAL,
	"title" TEXT,
	"author" TEXT,
	"genre" TEXT,
	"isbn" TEXT,
	"pages" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
