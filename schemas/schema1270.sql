DROP DATABASE IF EXISTS "schema1270";
CREATE DATABASE "schema1270";
USE "schema1270";
CREATE TABLE "tag" (
	"id" INT,
	"tag_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"product_name" VARCHAR,
	"price" DECIMAL,
	"stock" INT,
	"category_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "producttag" (
	"id" INT,
	"product_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_producttag_to_tag" FOREIGN KEY ("tag_id") REFERENCES "tag" ("id"),
	 CONSTRAINT "fkeycon_producttag_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
