DROP DATABASE IF EXISTS "schema554";
CREATE DATABASE "schema554";
USE "schema554";
CREATE TABLE "address" (
	"id" BIGSERIAL,
	"user_id" BIGSERIAL,
	"zip" INT8,
	"street" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user" (
	"id" BIGSERIAL,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);
