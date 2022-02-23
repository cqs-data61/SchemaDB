DROP DATABASE IF EXISTS "schema2251";
CREATE DATABASE "schema2251";
USE "schema2251";
CREATE TABLE "products" (
	"id" BINARY,
	"code" VARCHAR,
	"name" VARCHAR,
	"summary" TEXT,
	"description" TEXT,
	"image" VARCHAR,
	"price" FLOAT,
	"on_sale" BIT,
	"sale_price" FLOAT,
	"in_stock" BIT,
	"time_to_stock" INTEGER,
	"rating" INTEGER,
	"available" BIT
);

CREATE TABLE "accounts" (
	"id" BINARY,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR
);
