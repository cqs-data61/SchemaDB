DROP DATABASE IF EXISTS "schema1773";
CREATE DATABASE "schema1773";
USE "schema1773";
CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
