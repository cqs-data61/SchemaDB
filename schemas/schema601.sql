DROP DATABASE IF EXISTS "schema601";
CREATE DATABASE "schema601";
USE "schema601";
CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" INT,
	"cover" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"date" VARCHAR,
	"press" VARCHAR,
	"abs" VARCHAR,
	"cid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" CHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
