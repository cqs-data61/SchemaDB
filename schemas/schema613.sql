DROP DATABASE IF EXISTS "schema613";
CREATE DATABASE "schema613";
USE "schema613";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"zip_code" VARCHAR,
	"phone_number" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" SERIAL,
	"product_name" VARCHAR,
	"in_stock" INTEGER,
	"price" DECIMAL,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);
