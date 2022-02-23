DROP DATABASE IF EXISTS "schema1555";
CREATE DATABASE "schema1555";
USE "schema1555";
CREATE TABLE "user_verifications" (
	"id" SERIAL,
	"user_id" INTEGER,
	"hash" CHAR,
	"expires" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" CHAR,
	"salt" CHAR,
	"email_verified" BOOLEAN
);
