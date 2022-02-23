DROP DATABASE IF EXISTS "schema521";
CREATE DATABASE "schema521";
USE "schema521";
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
