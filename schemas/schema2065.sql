DROP DATABASE IF EXISTS "schema2065";
CREATE DATABASE "schema2065";
USE "schema2065";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"description" TEXT,
	"mark" VARCHAR,
	"body_type" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);
