DROP DATABASE IF EXISTS "schema1638";
CREATE DATABASE "schema1638";
USE "schema1638";
CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" TINYINT,
	 PRIMARY KEY ("username")
);

CREATE TABLE "authorities" (
	"user_role_id" INT,
	"username" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("user_role_id"),
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
