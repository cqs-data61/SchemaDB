DROP DATABASE IF EXISTS "schema109";
CREATE DATABASE "schema109";
USE "schema109";
CREATE TABLE "order_history" (
	"id" INT,
	"product_id" INT,
	"customer_email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"price" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customer" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
