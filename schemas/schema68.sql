DROP DATABASE IF EXISTS "schema68";
CREATE DATABASE "schema68";
USE "schema68";
CREATE TABLE "bookmark" (
	"id" INT,
	"category" VARCHAR,
	"url" VARCHAR,
	"comment" VARCHAR
);

CREATE TABLE "user" (
	"user_name" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_name")
);
