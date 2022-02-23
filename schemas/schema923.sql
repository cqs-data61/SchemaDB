DROP DATABASE IF EXISTS "schema923";
CREATE DATABASE "schema923";
USE "schema923";
CREATE TABLE "tag" (
	"id" INTEGER,
	"tag_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INTEGER,
	"product_name" VARCHAR,
	"price" DECIMAL,
	"stock" INTEGER,
	"category_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "producttag" (
	"id" INTEGER,
	"product_id" INT,
	"tag_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_producttag_to_tag" FOREIGN KEY ("tag_id") REFERENCES "tag" ("id"),
	 CONSTRAINT "fkeycon_producttag_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
