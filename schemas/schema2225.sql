DROP DATABASE IF EXISTS "schema2225";
CREATE DATABASE "schema2225";
USE "schema2225";
CREATE TABLE "account_information" (
	"id" SERIAL,
	"user_id" BIGINT,
	"login" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);
