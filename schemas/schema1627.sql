DROP DATABASE IF EXISTS "schema1627";
CREATE DATABASE "schema1627";
USE "schema1627";
CREATE TABLE "replies" (
	"id" SERIAL,
	"description" TEXT,
	"created" TIMESTAMP,
	"post_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"created" TIMESTAMP,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
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
