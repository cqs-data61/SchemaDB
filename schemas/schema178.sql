DROP DATABASE IF EXISTS "schema178";
CREATE DATABASE "schema178";
USE "schema178";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fk_authorities_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
