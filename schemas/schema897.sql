DROP DATABASE IF EXISTS "schema897";
CREATE DATABASE "schema897";
USE "schema897";
CREATE TABLE "bills_data" (
	"bill_id" INT,
	"name" TEXT,
	"price" REAL,
	"discount" REAL,
	"qty" INT
);

CREATE TABLE "bills" (
	"bill_id" INT,
	"customer_name" TEXT,
	"customer_mobile" TEXT,
	"date" TEXT,
	"freightcharges" REAL,
	"deposited" REAL,
	"total" REAL,
	 PRIMARY KEY ("bill_id")
);

CREATE TABLE "inventory" (
	"name" TEXT,
	"price" REAL,
	"discount" REAL,
	"codename" TEXT,
	 PRIMARY KEY ("name")
);
