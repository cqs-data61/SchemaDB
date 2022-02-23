DROP DATABASE IF EXISTS "schema1217";
CREATE DATABASE "schema1217";
USE "schema1217";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" INT,
	"message" VARCHAR,
	"username" INT,
	"roomname" VARCHAR,
	 PRIMARY KEY ("id")
);
