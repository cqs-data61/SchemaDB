DROP DATABASE IF EXISTS "schema2104";
CREATE DATABASE "schema2104";
USE "schema2104";
CREATE TABLE "producttag" (
	"id" INT,
	"product_id" INT,
	"tag_id" INT
);

CREATE TABLE "tag" (
	"id" INT,
	"tag_name" VARCHAR
);

CREATE TABLE "product" (
	"id" INT,
	"product_name" VARCHAR,
	"price" DECIMAL,
	"stock" INT,
	"category_id" INT
);

CREATE TABLE "category" (
	"id" INT,
	"category_name" VARCHAR
);
