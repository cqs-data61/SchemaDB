DROP DATABASE IF EXISTS "schema1760";
CREATE DATABASE "schema1760";
USE "schema1760";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"login" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"code" VARCHAR,
	"tags" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
