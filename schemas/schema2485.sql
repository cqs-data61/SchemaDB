DROP DATABASE IF EXISTS "schema2485";
CREATE DATABASE "schema2485";
USE "schema2485";
CREATE TABLE "recipes" (
	"raw_material" VARCHAR,
	"cookie_name" VARCHAR,
	"amount" INTEGER,
	"unit" VARCHAR
);

CREATE TABLE "rawmaterials" (
	"name" VARCHAR,
	"amount" INT,
	"unit" VARCHAR,
	"last_bought_date" LONG,
	"last_bought_amount" LONG
);

CREATE TABLE "pallets" (
	"pallet_id" INTEGER,
	"prod_date" LONG,
	"blocked" BOOL,
	"location" VARCHAR,
	"delivered_date" LONG,
	"order_id" INTEGER,
	"cookie_name" VARCHAR
);

CREATE TABLE "cookies" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "orders" (
	"customer_name" VARCHAR,
	"order_id" INTEGER,
	"order_date" LONG
);

CREATE TABLE "customers" (
	"name" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("name")
);
