DROP DATABASE IF EXISTS "schema297";
CREATE DATABASE "schema297";
USE "schema297";
CREATE TABLE "user_favorite" (
	"fav_id" INTEGER,
	"user_id" INTEGER,
	"product_id" INTEGER
);

CREATE TABLE "user_order" (
	"order_id" INTEGER,
	"user_id" INTEGER,
	"product_id" INTEGER,
	"rating" INTEGER
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"pass_word" VARCHAR,
	"user_name" VARCHAR
);

CREATE TABLE "product" (
	"product_id" INTEGER,
	"product_name" VARCHAR,
	"on_sale" BOOLEAN
);
