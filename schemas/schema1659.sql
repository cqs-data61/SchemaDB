DROP DATABASE IF EXISTS "schema1659";
CREATE DATABASE "schema1659";
USE "schema1659";
CREATE TABLE "brands" (
	"id" INTEGER,
	"name" TEXT,
	"country" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "models" (
	"id" INTEGER,
	"name" TEXT,
	"type" TEXT,
	"doors_count" INTEGER,
	"brand_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_models_brands_brand_id" FOREIGN KEY ("brand_id") REFERENCES "brands" ("id")
);
