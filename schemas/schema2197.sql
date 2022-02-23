DROP DATABASE IF EXISTS "schema2197";
CREATE DATABASE "schema2197";
USE "schema2197";
CREATE TABLE "readbooks" (
	"readerid" INTEGER,
	"bookid" INTEGER,
	"finished" BOOLEAN
);

CREATE TABLE "readers" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"wordread" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"writerid" INTEGER,
	"content" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookcomments" (
	"bookid" INTEGER,
	"commentid" INTEGER
);

CREATE TABLE "books" (
	"id" INTEGER,
	"authorid" INTEGER,
	"title" VARCHAR,
	"summary" VARCHAR,
	"score" INTEGER,
	"numberofvote" INTEGER,
	 PRIMARY KEY ("id")
);
