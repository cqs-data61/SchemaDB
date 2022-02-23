DROP DATABASE IF EXISTS "schema599";
CREATE DATABASE "schema599";
USE "schema599";
CREATE TABLE "operation" (
	"date" TEXT,
	"operation" TEXT,
	"id_drink" INTEGER,
	"name_drink" TEXT,
	"amount" INTEGER,
	"price" REAL
);

CREATE TABLE "drinks" (
	"id" INTEGER,
	"name" TEXT,
	"quantity" INTEGER,
	"selling_price" REAL,
	"purchase_price" REAL,
	 PRIMARY KEY ("id")
);
