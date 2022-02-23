DROP DATABASE IF EXISTS "schema643";
CREATE DATABASE "schema643";
USE "schema643";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"userid" INT,
	"text" VARCHAR,
	"roomname" VARCHAR,
	 PRIMARY KEY ("id")
);
