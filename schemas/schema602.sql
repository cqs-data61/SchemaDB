DROP DATABASE IF EXISTS "schema602";
CREATE DATABASE "schema602";
USE "schema602";
CREATE TABLE "user" (
	"user_id" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "payment" (
	"id" BIGINT,
	"amount" DECIMAL,
	"amount_disbursment" DECIMAL,
	"status" VARCHAR,
	"user_id" VARCHAR
);
