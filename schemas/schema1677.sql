DROP DATABASE IF EXISTS "schema1677";
CREATE DATABASE "schema1677";
USE "schema1677";
CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"stock" INT,
	"price" INT,
	"status" VARCHAR,
	"category_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "category_id" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
