DROP DATABASE IF EXISTS "schema2321";
CREATE DATABASE "schema2321";
USE "schema2321";
CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"brand" VARCHAR,
	"url" VARCHAR,
	"nutriscore" CHAR,
	"ingredients" VARCHAR,
	"stores" VARCHAR,
	"category_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_product_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "substitutes" (
	"product_id" INT,
	"substitute_id" INT,
	 PRIMARY KEY ("product_id","substitute_id"),
	 CONSTRAINT "fk_product_has_product_product1" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fk_product_has_product_product2" FOREIGN KEY ("substitute_id") REFERENCES "product" ("id")
);
