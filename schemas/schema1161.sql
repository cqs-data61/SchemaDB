DROP DATABASE IF EXISTS "schema1161";
CREATE DATABASE "schema1161";
USE "schema1161";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorities" (
	"id" INT,
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fkeycon_authorities_to_users" FOREIGN KEY ("id") REFERENCES "users" ("id")
);
