DROP DATABASE IF EXISTS "schema708";
CREATE DATABASE "schema708";
USE "schema708";
CREATE TABLE "posts" (
	"id" SERIAL,
	"author_id" INTEGER,
	"title" TEXT,
	"content" TEXT,
	"created_at" BIGINT,
	"published_at" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authors" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
