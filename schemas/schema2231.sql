DROP DATABASE IF EXISTS "schema2231";
CREATE DATABASE "schema2231";
USE "schema2231";
CREATE TABLE "user" (
	"id" VARCHAR,
	"name" VARCHAR,
	"pass" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"isbn" CHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"price" INT,
	 PRIMARY KEY ("isbn")
);
