DROP DATABASE IF EXISTS "schema352";
CREATE DATABASE "schema352";
USE "schema352";
CREATE TABLE "user_monument" (
	"fk_user" INTEGER,
	"fk_monument" INTEGER
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "monuments" (
	"id" SERIAL,
	"name" VARCHAR,
	"city" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "measure" (
	"id" SERIAL,
	"type" VARCHAR,
	"unit" VARCHAR,
	"value" REAL,
	"measuredate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "city" (
	"index" SERIAL,
	"name" VARCHAR,
	"latitude" REAL,
	"longitude" REAL,
	 PRIMARY KEY ("index")
);
