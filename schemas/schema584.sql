DROP DATABASE IF EXISTS "schema584";
CREATE DATABASE "schema584";
USE "schema584";
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
