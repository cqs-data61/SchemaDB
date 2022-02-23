DROP DATABASE IF EXISTS "schema767";
CREATE DATABASE "schema767";
USE "schema767";
CREATE TABLE "tag" (
	"id" INT,
	"tag_name" VARCHAR
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "product" (
	"id" INT,
	"product_name" VARCHAR,
	"price" DECIMAL,
	"stock" INT,
	"category_id" INT,
	 CONSTRAINT "fk_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "producttag" (
	"id" INT,
	"product_id" INT,
	"tag_id" INT,
	 CONSTRAINT "fk_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_tag" FOREIGN KEY ("tag_id") REFERENCES "tag" ("id")
);
