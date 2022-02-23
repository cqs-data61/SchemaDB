DROP DATABASE IF EXISTS "schema2318";
CREATE DATABASE "schema2318";
USE "schema2318";
CREATE TABLE "books" (
	"id" BIGINT,
	"title" VARCHAR,
	"author_id" BIGINT,
	"genre_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "genres" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" BIGINT,
	"fio" VARCHAR,
	 PRIMARY KEY ("id")
);
