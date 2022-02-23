DROP DATABASE IF EXISTS "schema657";
CREATE DATABASE "schema657";
USE "schema657";
CREATE TABLE "purchase_orders" (
	"id" INT,
	"userid" VARCHAR,
	"productid" INT,
	"category" VARCHAR,
	"quantity" INT,
	"amount" DOUBLE,
	"purchase_date" DATE
);

CREATE TABLE "users" (
	"id" INT,
	"userid" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"contactid" INT
);

CREATE TABLE "product_master" (
	"id" INT,
	"brand" VARCHAR,
	"colour" VARCHAR,
	"category" VARCHAR,
	"shoe_size" DOUBLE,
	"price" DOUBLE
);
