DROP DATABASE IF EXISTS "schema2031";
CREATE DATABASE "schema2031";
USE "schema2031";
CREATE TABLE "notes" (
	"id" INTEGER,
	"pad_id" INTEGER,
	"user_id" INTEGER,
	"name" VARCHAR,
	"text" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME
);

CREATE TABLE "pads" (
	"id" INTEGER,
	"name" VARCHAR,
	"user_id" INTEGER
);

CREATE TABLE "users" (
	"id" INTEGER,
	"email" VARCHAR,
	"password" VARCHAR
);
