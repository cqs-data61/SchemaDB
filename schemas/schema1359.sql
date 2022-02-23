DROP DATABASE IF EXISTS "schema1359";
CREATE DATABASE "schema1359";
USE "schema1359";
CREATE TABLE "replyposts" (
	"id" VARCHAR,
	"name" VARCHAR,
	"post" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"repeatpassword" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blogposts" (
	"id" VARCHAR,
	"name" VARCHAR,
	"post" VARCHAR,
	 PRIMARY KEY ("id")
);
