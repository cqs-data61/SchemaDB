DROP DATABASE IF EXISTS "schema1069";
CREATE DATABASE "schema1069";
USE "schema1069";
CREATE TABLE "messages" (
	"date" TEXT,
	"operation" TEXT,
	"id_drink" INTEGER,
	"name_drink" TEXT,
	"amount" INTEGER,
	"price" REAL
);

CREATE TABLE "users" (
	"id" INTEGER,
	"name" TEXT,
	"quantity" INTEGER,
	"selling_price" REAL,
	"purchase_price" REAL,
	 PRIMARY KEY ("id")
);
