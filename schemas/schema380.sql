DROP DATABASE IF EXISTS "schema380";
CREATE DATABASE "schema380";
USE "schema380";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fkeycon_authorities_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
