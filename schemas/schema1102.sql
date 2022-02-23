DROP DATABASE IF EXISTS "schema1102";
CREATE DATABASE "schema1102";
USE "schema1102";
CREATE TABLE "book" (
	"book_id" INT,
	"book_title" VARCHAR,
	"author_id" INT,
	"created_by" VARCHAR,
	"created_dt" DATETIME,
	"updated_by" VARCHAR,
	"updated_dt" DATETIME,
	 PRIMARY KEY ("book_id")
);

CREATE TABLE "author" (
	"author_id" INT,
	"author_name" VARCHAR,
	"created_by" VARCHAR,
	"created_dt" DATETIME,
	"updated_by" VARCHAR,
	"updated_dt" DATETIME,
	 PRIMARY KEY ("author_id")
);
