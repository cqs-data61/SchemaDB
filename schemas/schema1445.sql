DROP DATABASE IF EXISTS "schema1445";
CREATE DATABASE "schema1445";
USE "schema1445";
CREATE TABLE "ingredients" (
	"id" INTEGER,
	"name" VARCHAR,
	"stock" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vegetables" (
	"id" INTEGER,
	"name" VARCHAR,
	"stock" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
