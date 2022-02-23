DROP DATABASE IF EXISTS "schema636";
CREATE DATABASE "schema636";
USE "schema636";
CREATE TABLE "user" (
	"id" IDENTITY,
	"first_name" VARCHAR,
	"last_name" VARCHAR
);

CREATE TABLE "country" (
	"id" IDENTITY,
	"name" VARCHAR,
	"code_name" VARCHAR
);
