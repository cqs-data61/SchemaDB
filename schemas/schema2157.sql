DROP DATABASE IF EXISTS "schema2157";
CREATE DATABASE "schema2157";
USE "schema2157";
CREATE TABLE "product" (
	"id" SERIAL,
	"name" VARCHAR,
	"price" NUMERIC,
	"quantity" INTEGER,
	"created_at" TIMESTAMP,
	"user_id" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patrot_user" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
