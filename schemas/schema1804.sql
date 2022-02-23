DROP DATABASE IF EXISTS "schema1804";
CREATE DATABASE "schema1804";
USE "schema1804";
CREATE TABLE "users" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"username" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"is_active" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"deleted_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migration" (
	"version" CHARACTER VARYING
);
