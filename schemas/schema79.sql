DROP DATABASE IF EXISTS "schema79";
CREATE DATABASE "schema79";
USE "schema79";
CREATE TABLE "user" (
	"user_name" VARCHAR,
	"user_pass" VARCHAR,
	"enable" TINYINT,
	 PRIMARY KEY ("user_name")
);

CREATE TABLE "user_role" (
	"user_name" VARCHAR,
	"user_role" VARCHAR,
	 CONSTRAINT "user_role_ibfk_1" FOREIGN KEY ("user_name") REFERENCES "user" ("user_name")
);
