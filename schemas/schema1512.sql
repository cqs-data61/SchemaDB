DROP DATABASE IF EXISTS "schema1512";
CREATE DATABASE "schema1512";
USE "schema1512";
CREATE TABLE "user" (
	"id" INTEGER,
	"name" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "newnote" (
	"id" INTEGER,
	"memo" VARCHAR,
	"title" VARCHAR,
	"created_by" VARCHAR,
	"date_created" DATE
);
