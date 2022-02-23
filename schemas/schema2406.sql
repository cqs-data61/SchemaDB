DROP DATABASE IF EXISTS "schema2406";
CREATE DATABASE "schema2406";
USE "schema2406";
CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "product" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"category_id" INT,
	 CONSTRAINT "fkeycon_product_to_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "brand" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR
);

CREATE TABLE "currency" (
	"id" INT,
	"description" VARCHAR
);

CREATE TABLE "prices" (
	"id" BIGINT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"priority" INT,
	"price" FLOAT,
	"brand_id" INT,
	"product_id" BIGINT,
	"currency_id" INT,
	 CONSTRAINT "fkeycon_prices_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("id"),
	 CONSTRAINT "fkeycon_prices_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_prices_to_brand" FOREIGN KEY ("brand_id") REFERENCES "brand" ("id")
);
