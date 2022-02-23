DROP DATABASE IF EXISTS "schema2492";
CREATE DATABASE "schema2492";
USE "schema2492";
CREATE TABLE "roles_perms" (
	"role" VARCHAR,
	"perm" VARCHAR
);

CREATE TABLE "user_roles" (
	"username" VARCHAR,
	"role" VARCHAR
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"password" VARCHAR,
	"password_salt" VARCHAR
);
