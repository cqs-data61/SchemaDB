DROP DATABASE IF EXISTS "schema2165";
CREATE DATABASE "schema2165";
USE "schema2165";
CREATE TABLE "details" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"regex" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "objects" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"regex" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activities" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"regex" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "modalverb" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "systemname" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"regex" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "precondition" (
	"id" INTEGER,
	"key_name" VARCHAR,
	"regex" VARCHAR,
	"required" INTEGER,
	 PRIMARY KEY ("id")
);
