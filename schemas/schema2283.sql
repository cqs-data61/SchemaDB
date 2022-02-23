DROP DATABASE IF EXISTS "schema2283";
CREATE DATABASE "schema2283";
USE "schema2283";
CREATE TABLE "credential" (
	"id" INT,
	"url" VARCHAR,
	"username" VARCHAR,
	"passwordkey" VARCHAR,
	"password" VARCHAR,
	"userid" INT
);

CREATE TABLE "note" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"userid" INT
);

CREATE TABLE "file" (
	"id" INT,
	"name" VARCHAR,
	"contenttype" VARCHAR,
	"filesize" VARCHAR,
	"userid" INT,
	"data" BLOB
);

CREATE TABLE "usertable" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"salt" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR
);
