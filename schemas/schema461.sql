DROP DATABASE IF EXISTS "schema461";
CREATE DATABASE "schema461";
USE "schema461";
CREATE TABLE "admin_account" (
);

CREATE TABLE "account" (
	"login_name" CHARACTER VARYING,
	"password" TEXT,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	 PRIMARY KEY ("login_name")
);
