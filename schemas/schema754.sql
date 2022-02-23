DROP DATABASE IF EXISTS "schema754";
CREATE DATABASE "schema754";
USE "schema754";
CREATE TABLE "members" (
	"customer_id" VARCHAR,
	"join_date" DATE
);

CREATE TABLE "menu" (
	"product_id" INTEGER,
	"product_name" VARCHAR,
	"price" INTEGER
);

CREATE TABLE "sales" (
	"customer_id" VARCHAR,
	"order_date" DATE,
	"product_id" INTEGER
);
