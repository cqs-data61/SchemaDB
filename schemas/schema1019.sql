DROP DATABASE IF EXISTS "schema1019";
CREATE DATABASE "schema1019";
USE "schema1019";
CREATE TABLE "users" (
	"uuid" CHAR,
	"email" VARCHAR,
	"password" CHAR,
	"admin" TINYINT
);

CREATE TABLE "books" (
	"uuid" CHAR,
	"name" VARCHAR,
	"issuereq" VARCHAR,
	"issuedby" VARCHAR,
	"issuedon" DATETIME,
	"returnby" DATETIME,
	"returnon" DATETIME,
	"fine" DOUBLE
);
