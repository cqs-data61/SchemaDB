DROP DATABASE IF EXISTS "schema70";
CREATE DATABASE "schema70";
USE "schema70";
CREATE TABLE "book" (
	"id" IDENTITY,
	"isbn" VARCHAR,
	"title" VARCHAR,
	"author" VARCHAR,
	"description" VARCHAR,
	"version" INT
);

CREATE TABLE "reader" (
	"id" IDENTITY,
	"username" VARCHAR,
	"password" VARCHAR,
	"fullname" VARCHAR,
	"version" INT
);
