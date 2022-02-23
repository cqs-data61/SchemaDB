DROP DATABASE IF EXISTS "schema1886";
CREATE DATABASE "schema1886";
USE "schema1886";
CREATE TABLE "images" (
	"id" SERIAL,
	"name" VARCHAR,
	"user_id" INTEGER,
	"file_path" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"password_digest" VARCHAR,
	 PRIMARY KEY ("id")
);
