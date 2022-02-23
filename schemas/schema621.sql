DROP DATABASE IF EXISTS "schema621";
CREATE DATABASE "schema621";
USE "schema621";
CREATE TABLE "users_roles" (
	"user_id" INT,
	"role_id" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"role_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"enabled" BOOLEAN,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
