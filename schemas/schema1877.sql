DROP DATABASE IF EXISTS "schema1877";
CREATE DATABASE "schema1877";
USE "schema1877";
CREATE TABLE "products" (
	"product_id" INT,
	"product_name" VARCHAR,
	"category" VARCHAR,
	"stock_count" VARCHAR,
	"status" VARCHAR,
	"purchased_date" DATETIME,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_by" VARCHAR,
	"created_on" DATETIME,
	 PRIMARY KEY ("id")
);
