DROP DATABASE IF EXISTS "schema712";
CREATE DATABASE "schema712";
USE "schema712";
CREATE TABLE "spitter" (
	"id" IDENTITY,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR
);

CREATE TABLE "spittle" (
	"id" IDENTITY,
	"message" VARCHAR,
	"created_at" TIMESTAMP,
	"latitude" DOUBLE,
	"longitude" DOUBLE
);
