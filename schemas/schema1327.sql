DROP DATABASE IF EXISTS "schema1327";
CREATE DATABASE "schema1327";
USE "schema1327";
CREATE TABLE "product" (
	"id" SERIAL,
	"user_id" INTEGER,
	"name" VARCHAR,
	"price" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
