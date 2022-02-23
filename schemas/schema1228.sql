DROP DATABASE IF EXISTS "schema1228";
CREATE DATABASE "schema1228";
USE "schema1228";
CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"price" VARCHAR,
	"currency" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authority" (
	"id" INT,
	"name" VARCHAR,
	"user" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" TEXT,
	"algorithm" VARCHAR,
	 PRIMARY KEY ("id")
);
