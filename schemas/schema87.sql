DROP DATABASE IF EXISTS "schema87";
CREATE DATABASE "schema87";
USE "schema87";
CREATE TABLE "products" (
	"code" BIGINT,
	"description" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BIT,
	 PRIMARY KEY ("username")
);
