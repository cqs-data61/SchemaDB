DROP DATABASE IF EXISTS "schema211";
CREATE DATABASE "schema211";
USE "schema211";
CREATE TABLE "manager" (
	"no" BIGSERIAL,
	"label" VARCHAR,
	 PRIMARY KEY ("no")
);

CREATE TABLE "client" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "test" (
	"id" INT,
	"name" VARCHAR
);
