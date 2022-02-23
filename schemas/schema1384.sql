DROP DATABASE IF EXISTS "schema1384";
CREATE DATABASE "schema1384";
USE "schema1384";
CREATE TABLE "posts" (
	"id" INT,
	"id_user" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME
);
