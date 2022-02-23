DROP DATABASE IF EXISTS "schema1531";
CREATE DATABASE "schema1531";
USE "schema1531";
CREATE TABLE "product" (
	"no" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"name" VARCHAR,
	"tel" VARCHAR,
	 PRIMARY KEY ("id")
);
