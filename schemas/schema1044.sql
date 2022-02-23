DROP DATABASE IF EXISTS "schema1044";
CREATE DATABASE "schema1044";
USE "schema1044";
CREATE TABLE "products" (
	"id" NUMERIC,
	"name" VARCHAR,
	"amount" NUMERIC,
	"price" NUMERIC,
	"id_providers" NUMERIC,
	"id_categories" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" NUMERIC,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "providers" (
	"id" NUMERIC,
	"name" VARCHAR,
	"street" VARCHAR,
	"city" VARCHAR,
	"state" CHAR,
	 PRIMARY KEY ("id")
);
