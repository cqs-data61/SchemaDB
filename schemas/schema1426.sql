DROP DATABASE IF EXISTS "schema1426";
CREATE DATABASE "schema1426";
USE "schema1426";
CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN
);
