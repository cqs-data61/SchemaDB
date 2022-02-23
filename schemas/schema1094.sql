DROP DATABASE IF EXISTS "schema1094";
CREATE DATABASE "schema1094";
USE "schema1094";
CREATE TABLE "borrow" (
	"book_id" CHAR,
	"reader_id" CHAR,
	"borrow_date" DATE,
	"return_date" DATE
);

CREATE TABLE "reader" (
	"id" CHAR,
	"name" VARCHAR,
	"age" INT,
	"address" VARCHAR
);

CREATE TABLE "book" (
	"id" CHAR,
	"name" VARCHAR,
	"author" VARCHAR,
	"price" FLOAT,
	"status" INT,
	 PRIMARY KEY ("id")
);
