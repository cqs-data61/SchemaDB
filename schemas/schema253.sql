DROP DATABASE IF EXISTS "schema253";
CREATE DATABASE "schema253";
USE "schema253";
CREATE TABLE "products" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"price" DOUBLE,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);
