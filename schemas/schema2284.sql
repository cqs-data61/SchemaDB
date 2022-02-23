DROP DATABASE IF EXISTS "schema2284";
CREATE DATABASE "schema2284";
USE "schema2284";
CREATE TABLE "products" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"price" FLOAT,
	"category" VARCHAR,
	"brand" VARCHAR,
	"imageurl" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
