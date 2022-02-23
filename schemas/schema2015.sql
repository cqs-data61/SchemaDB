DROP DATABASE IF EXISTS "schema2015";
CREATE DATABASE "schema2015";
USE "schema2015";
CREATE TABLE "authentication" (
	"user_id" CHAR,
	"username" TEXT,
	"password" TEXT,
	"salt" TEXT
);

CREATE TABLE "user" (
	"id" INT,
	"name" INT,
	"email" INT
);

CREATE TABLE "weight_log" (
	"user_id" CHAR,
	"weight" INT,
	"create_at" TIMESTAMP
);

CREATE TABLE "water_log" (
	"user_id" CHAR,
	"created_at" TIMESTAMP,
	"amount" INT
);

CREATE TABLE "fast_log" (
	"user_id" CHAR,
	"created_at" TIMESTAMP,
	"start" TIMESTAMP,
	"end" TIMESTAMP,
	"updated_at" TIMESTAMP
);
