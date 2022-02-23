DROP DATABASE IF EXISTS "schema946";
CREATE DATABASE "schema946";
USE "schema946";
CREATE TABLE "book" (
	"id" INTEGER,
	"author_id" INTEGER,
	"title" TEXT,
	"isbn" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" INTEGER,
	"country_id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "country" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
