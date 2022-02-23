DROP DATABASE IF EXISTS "schema228";
CREATE DATABASE "schema228";
USE "schema228";
CREATE TABLE "users" (
	"username" VARCHAR_IGNORECASE,
	"password" VARCHAR_IGNORECASE,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"username" VARCHAR_IGNORECASE,
	"authority" VARCHAR_IGNORECASE,
	 CONSTRAINT "fk_authorities_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
