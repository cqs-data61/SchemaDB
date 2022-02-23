DROP DATABASE IF EXISTS "schema1361";
CREATE DATABASE "schema1361";
USE "schema1361";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fkeycon_authorities_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
