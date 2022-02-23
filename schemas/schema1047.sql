DROP DATABASE IF EXISTS "schema1047";
CREATE DATABASE "schema1047";
USE "schema1047";
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
