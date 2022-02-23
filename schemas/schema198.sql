DROP DATABASE IF EXISTS "schema198";
CREATE DATABASE "schema198";
USE "schema198";
CREATE TABLE "order_unit" (
	"id" INT,
	"order_id" INT,
	"book_id" INT,
	"price" INT,
	"amount" INT
);

CREATE TABLE "order" (
	"id" INT,
	"cart_id" INT,
	"created_at" DATETIME
);

CREATE TABLE "cart_unit" (
	"id" INT,
	"cart_id" INT,
	"book_id" INT,
	"amount" INT
);

CREATE TABLE "cart" (
	"id" INT,
	"member_id" INT,
	"created_at" DATETIME
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "book" (
	"id" INT,
	"category_id" INT,
	"name" VARCHAR,
	"stock" INT,
	"price" INT
);

CREATE TABLE "member" (
	"id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR
);
