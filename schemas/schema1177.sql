DROP DATABASE IF EXISTS "schema1177";
CREATE DATABASE "schema1177";
USE "schema1177";
CREATE TABLE "reading_status" (
	"id" INT,
	"reading_page" INT,
	"update_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "booktable" (
	"id" INT,
	"book_name" VARCHAR,
	"volume_num" VARCHAR,
	"author_name" VARCHAR,
	"register_date" DATE,
	 PRIMARY KEY ("id")
);
