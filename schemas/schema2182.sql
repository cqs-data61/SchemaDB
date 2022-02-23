DROP DATABASE IF EXISTS "schema2182";
CREATE DATABASE "schema2182";
USE "schema2182";
CREATE TABLE "client" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "test" (
	"id" INT,
	"name" VARCHAR
);
