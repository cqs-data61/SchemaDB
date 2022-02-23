DROP DATABASE IF EXISTS "schema829";
CREATE DATABASE "schema829";
USE "schema829";
CREATE TABLE "book" (
	"id" INTEGER,
	"title" VARCHAR,
	"author" VARCHAR,
	"book_category" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"authhorities" VARCHAR,
	"password" VARCHAR,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);
