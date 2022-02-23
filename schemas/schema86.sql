DROP DATABASE IF EXISTS "schema86";
CREATE DATABASE "schema86";
USE "schema86";
CREATE TABLE "user_orgs" (
	"organization_id" VARCHAR,
	"user_name" VARCHAR,
	 PRIMARY KEY ("user_name")
);

CREATE TABLE "user_roles" (
	"user_role_id" SERIAL,
	"user_name" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_role_id")
);

CREATE TABLE "users" (
	"user_name" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("user_name")
);
