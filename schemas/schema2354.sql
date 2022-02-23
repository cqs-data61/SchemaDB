DROP DATABASE IF EXISTS "schema2354";
CREATE DATABASE "schema2354";
USE "schema2354";
CREATE TABLE "cluster" (
	"id" INT,
	"name" VARCHAR,
	"config" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
