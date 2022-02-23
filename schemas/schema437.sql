DROP DATABASE IF EXISTS "schema437";
CREATE DATABASE "schema437";
USE "schema437";
CREATE TABLE "user" (
	"username" VARCHAR_IGNORECASE,
	"password" VARCHAR_IGNORECASE,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorization" (
	"username" VARCHAR_IGNORECASE,
	"authority" VARCHAR_IGNORECASE,
	 CONSTRAINT "fk_authorities_users" FOREIGN KEY ("username") REFERENCES "user" ("username")
);
