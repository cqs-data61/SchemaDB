DROP DATABASE IF EXISTS "schema966";
CREATE DATABASE "schema966";
USE "schema966";
CREATE TABLE "users" (
	"userid" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "products" (
	"id" INTEGER,
	"name" VARCHAR,
	"price" VARCHAR,
	 PRIMARY KEY ("id")
);
