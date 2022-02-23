DROP DATABASE IF EXISTS "schema831";
CREATE DATABASE "schema831";
USE "schema831";
CREATE TABLE "users" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created" INT,
	"updated" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tokens" (
	"id" INT,
	"user_id" INT,
	"token" VARCHAR,
	"created" INT,
	 PRIMARY KEY ("id")
);
