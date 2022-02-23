DROP DATABASE IF EXISTS "schema634";
CREATE DATABASE "schema634";
USE "schema634";
CREATE TABLE "vocabulary" (
	"id" INT,
	"eng" VARCHAR,
	"tr" VARCHAR,
	"vocabulary_list_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vocabulary_lists" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
