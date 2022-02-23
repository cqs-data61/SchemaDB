DROP DATABASE IF EXISTS "schema1590";
CREATE DATABASE "schema1590";
USE "schema1590";
CREATE TABLE "sale_details" (
	"id" INTEGER,
	"sale_id" INTEGER,
	"product_id" INTEGER,
	"name" TEXT,
	"price" INTEGER,
	"qty" INTEGER
);

CREATE TABLE "sales" (
	"id" INTEGER,
	"manager_id" INTEGER
);

CREATE TABLE "products" (
	"id" INTEGER,
	"name" TEXT,
	"price" INTEGER,
	"qty" INTEGER
);

CREATE TABLE "managers" (
	"id" INTEGER,
	"name" TEXT,
	"salary" INTEGER,
	"department" TEXT,
	"plan" INTEGER,
	"boss_id" INTEGER
);
