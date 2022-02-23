DROP DATABASE IF EXISTS "schema1183";
CREATE DATABASE "schema1183";
USE "schema1183";
CREATE TABLE "user" (
	"id" INT,
	"mobilenumber" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookmark" (
	"id" INT,
	"articlelink" VARCHAR,
	"userid" INT,
	"articlename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "addlink" (
	"id" INT,
	"name" VARCHAR,
	"url" VARCHAR,
	"userid" INT,
	 PRIMARY KEY ("id")
);
