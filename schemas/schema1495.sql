DROP DATABASE IF EXISTS "schema1495";
CREATE DATABASE "schema1495";
USE "schema1495";
CREATE TABLE "field" (
	"id" BIGINT,
	"name" VARCHAR,
	"key" VARCHAR,
	"is_key" BOOLEAN,
	"value" VARCHAR,
	"composite_key_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "composite_key" (
	"id" BIGINT,
	 PRIMARY KEY ("id")
);
