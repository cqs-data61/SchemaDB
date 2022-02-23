DROP DATABASE IF EXISTS "schema2505";
CREATE DATABASE "schema2505";
USE "schema2505";
CREATE TABLE "book" (
	"id" INT,
	"name" VARCHAR,
	"isbn" VARCHAR,
	"description" VARCHAR,
	"category" VARCHAR,
	"our_price" DOUBLE,
	"list_price" DOUBLE
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);
