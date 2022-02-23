DROP DATABASE IF EXISTS "schema2237";
CREATE DATABASE "schema2237";
USE "schema2237";
CREATE TABLE "polizze" (
	"polizzaid" VARCHAR,
	"name" VARCHAR,
	"price" NUMBER
);

CREATE TABLE "ordini_item" (
	"polizzaid" VARCHAR,
	"price" NUMBER,
	"orderid" VARCHAR
);

CREATE TABLE "ordini" (
	"id" VARCHAR,
	"status" VARCHAR,
	"price" NUMBER
);
