DROP DATABASE IF EXISTS "schema2061";
CREATE DATABASE "schema2061";
USE "schema2061";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "sessions" (
	"session_id" VARCHAR,
	"expires" INT,
	"data" MEDIUMTEXT
);
