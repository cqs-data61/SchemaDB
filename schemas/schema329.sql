DROP DATABASE IF EXISTS "schema329";
CREATE DATABASE "schema329";
USE "schema329";
CREATE TABLE "categories" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" SERIAL,
	"description" VARCHAR,
	"category_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "book" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "author" (
	"id" SERIAL,
	"name" VARCHAR,
	"book_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model" (
	"id" SERIAL,
	"id" SERIAL,
	"name" VARCHAR,
	"name" VARCHAR,
	"brand_id" INT,
	"brand_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brand" (
	"id" SERIAL,
	"id" SERIAL,
	"name" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "j_user" (
	"id" SERIAL,
	"name" VARCHAR,
	"role_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "j_role" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
