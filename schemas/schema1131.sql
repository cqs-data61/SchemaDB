DROP DATABASE IF EXISTS "schema1131";
CREATE DATABASE "schema1131";
USE "schema1131";
CREATE TABLE "user" (
	"id" INT,
	"login" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"fistname" VARCHAR,
	"lastname" VARCHAR
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"photo" VARCHAR,
	"price" DOUBLE
);

CREATE TABLE "order_product" (
	"order_id" INT,
	"product_id" INT
);

CREATE TABLE "order" (
	"id" INT,
	"total_price" DOUBLE,
	"creation_date" DATE
);

CREATE TABLE "doctrine_migration_versions" (
	"version" VARCHAR,
	"executed_at" DATETIME,
	"execution_time" INT
);
