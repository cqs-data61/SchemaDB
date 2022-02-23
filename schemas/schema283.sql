DROP DATABASE IF EXISTS "schema283";
CREATE DATABASE "schema283";
USE "schema283";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cities" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidates" (
	"id" SERIAL,
	"name" VARCHAR,
	"cityid" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"created" VARCHAR,
	 PRIMARY KEY ("id")
);
