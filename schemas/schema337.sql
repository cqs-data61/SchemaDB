DROP DATABASE IF EXISTS "schema337";
CREATE DATABASE "schema337";
USE "schema337";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" CHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fk_authorities_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
