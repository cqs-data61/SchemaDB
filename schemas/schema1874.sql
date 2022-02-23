DROP DATABASE IF EXISTS "schema1874";
CREATE DATABASE "schema1874";
USE "schema1874";
CREATE TABLE "discussion" (
	"post_id" INT,
	"discussion" TEXT,
	 PRIMARY KEY ("post_id","discussion")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"created" DATE,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	"authority_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorities" (
	"id" SERIAL,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);
