DROP DATABASE IF EXISTS "schema159";
CREATE DATABASE "schema159";
USE "schema159";
CREATE TABLE "post" (
	"id" INTEGER,
	"title" VARCHAR,
	"content" VARCHAR,
	"published" BOOLEAN,
	"authorid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"email" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
