DROP DATABASE IF EXISTS "schema475";
CREATE DATABASE "schema475";
USE "schema475";
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
