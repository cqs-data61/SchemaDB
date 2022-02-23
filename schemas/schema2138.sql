DROP DATABASE IF EXISTS "schema2138";
CREATE DATABASE "schema2138";
USE "schema2138";
CREATE TABLE "addresses" (
	"id" BIGSERIAL,
	"country" VARCHAR,
	"city" VARCHAR,
	"street" VARCHAR,
	"home_number" INT,
	"flat_number" INT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);
