DROP DATABASE IF EXISTS "schema45";
CREATE DATABASE "schema45";
USE "schema45";
CREATE TABLE "oder_detail" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"quantity" INT,
	"price" DECIMAL,
	"amount" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order" (
	"id" INT,
	"user_id" INT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"price" DECIMAL,
	"quantity_in_stock" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"tel" VARCHAR,
	 PRIMARY KEY ("id")
);
