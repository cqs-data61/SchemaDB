DROP DATABASE IF EXISTS "schema2083";
CREATE DATABASE "schema2083";
USE "schema2083";
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
