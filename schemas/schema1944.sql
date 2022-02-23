DROP DATABASE IF EXISTS "schema1944";
CREATE DATABASE "schema1944";
USE "schema1944";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"roles" VARCHAR,
	 CONSTRAINT "fkeycon_authorities_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
