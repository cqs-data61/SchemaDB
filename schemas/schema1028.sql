DROP DATABASE IF EXISTS "schema1028";
CREATE DATABASE "schema1028";
USE "schema1028";
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
