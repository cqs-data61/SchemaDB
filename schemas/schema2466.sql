DROP DATABASE IF EXISTS "schema2466";
CREATE DATABASE "schema2466";
USE "schema2466";
CREATE TABLE "categories" (
	"id" VARCHAR,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
