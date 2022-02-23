DROP DATABASE IF EXISTS "schema629";
CREATE DATABASE "schema629";
USE "schema629";
CREATE TABLE "users_roles" (
	"user_id" INTEGER,
	"role_id" INTEGER
);

CREATE TABLE "users" (
	"id" INTEGER,
	"email" VARCHAR,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"password" VARCHAR
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"name" VARCHAR
);
