DROP DATABASE IF EXISTS "schema596";
CREATE DATABASE "schema596";
USE "schema596";
CREATE TABLE "request" (
	"id" BIGINT,
	"user_id" BIGINT,
	"name" VARCHAR,
	"method" VARCHAR,
	"body" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"login" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
