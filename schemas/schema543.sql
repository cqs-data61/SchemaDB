DROP DATABASE IF EXISTS "schema543";
CREATE DATABASE "schema543";
USE "schema543";
CREATE TABLE "account" (
	"customer_id" INTEGER,
	"customer_name" VARCHAR,
	"position" NUMERIC,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
