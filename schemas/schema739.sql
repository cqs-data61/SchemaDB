DROP DATABASE IF EXISTS "schema739";
CREATE DATABASE "schema739";
USE "schema739";
CREATE TABLE "product" (
	"id" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"featured_media" VARCHAR,
	"status" VARCHAR,
	"tags" _VARCHAR,
	"created_date" DATETIME,
	"price" NUMERIC,
	"last_modified_date" DATETIME,
	"created_by" VARCHAR,
	"last_modified_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product_details" (
	"id" VARCHAR,
	"cost_price" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "product_details_id_fk" FOREIGN KEY ("id") REFERENCES "product" ("id")
);
