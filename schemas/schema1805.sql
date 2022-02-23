DROP DATABASE IF EXISTS "schema1805";
CREATE DATABASE "schema1805";
USE "schema1805";
CREATE TABLE "user_role" (
	"id" BIGINT,
	"role_name" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_tbl" (
	"id" BIGINT,
	"email_id" VARCHAR,
	"password" VARCHAR,
	"user_name" VARCHAR,
	 PRIMARY KEY ("id")
);
