DROP DATABASE IF EXISTS "schema1279";
CREATE DATABASE "schema1279";
USE "schema1279";
CREATE TABLE "list" (
	"id" INTEGER,
	"name" VARCHAR,
	"leaf" INTEGER,
	"lft" INTEGER,
	"rgt" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INTEGER,
	"title" VARCHAR,
	"list_id" INTEGER,
	"due" DATE,
	"reminder" DATE,
	"done" INTEGER,
	"note" BLOB,
	 PRIMARY KEY ("id")
);

CREATE TABLE "config" (
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("key")
);
