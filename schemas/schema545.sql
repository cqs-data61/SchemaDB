DROP DATABASE IF EXISTS "schema545";
CREATE DATABASE "schema545";
USE "schema545";
CREATE TABLE "users" (
	"username" VARCHAR,
	"country" VARCHAR,
	"enabled" SMALLINT,
	"full_name" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR
);

CREATE TABLE "topics" (
	"topic_id" INTEGER,
	"category" VARCHAR,
	"title" VARCHAR
);
