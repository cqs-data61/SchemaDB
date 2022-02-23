DROP DATABASE IF EXISTS "schema915";
CREATE DATABASE "schema915";
USE "schema915";
CREATE TABLE "list" (
	"id" INT,
	"name" VARCHAR,
	"quantity" VARCHAR,
	"description" VARCHAR,
	"price" INT,
	"image" VARCHAR,
	"information" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"information" VARCHAR,
	"category" VARCHAR,
	"oldprice" INT,
	"newprice" INT,
	"type" VARCHAR,
	"quantity" VARCHAR,
	"image" VARCHAR,
	"status" VARCHAR,
	"promotion" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"numberphone" INT,
	 PRIMARY KEY ("id")
);
