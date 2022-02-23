DROP DATABASE IF EXISTS "schema2431";
CREATE DATABASE "schema2431";
USE "schema2431";
CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"age" INT,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"date" DATE,
	"customer_id" INT,
	"product_name" VARCHAR,
	"amount" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_orders" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);
