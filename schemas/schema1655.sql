DROP DATABASE IF EXISTS "schema1655";
CREATE DATABASE "schema1655";
USE "schema1655";
CREATE TABLE "users" (
	"id" INT,
	"user" VARCHAR,
	"passwd" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "userinfo" (
	"id" INT,
	"email" VARCHAR,
	"bio" TEXT,
	"graded" TINYINT
);

CREATE TABLE "messages" (
	"uid" INT,
	"message" TEXT
);
