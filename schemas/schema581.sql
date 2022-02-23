DROP DATABASE IF EXISTS "schema581";
CREATE DATABASE "schema581";
USE "schema581";
CREATE TABLE "users" (
	"id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"username" VARCHAR,
	"points" INT,
	"skill" INT
);

CREATE TABLE "products" (
	"id" VARCHAR,
	"label" VARCHAR,
	"price" DECIMAL
);

CREATE TABLE "moon_bar" (
	"id" VARCHAR,
	"str" VARCHAR,
	"int" INT,
	"bol" BOOLEAN,
	"wen" TIMESTAMP,
	"mark" VARCHAR,
	"dec" REAL,
	"arr" TEXT,
	"obj" TEXT,
	"seneca" VARCHAR
);

CREATE TABLE "foo" (
	"id" VARCHAR,
	"p1" VARCHAR,
	"p2" VARCHAR,
	"p3" VARCHAR,
	"seneca" VARCHAR
);
