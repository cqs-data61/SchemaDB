DROP DATABASE IF EXISTS "schema447";
CREATE DATABASE "schema447";
USE "schema447";
CREATE TABLE "user_profiles" (
	"user_id" VARCHAR,
	"name" VARCHAR,
	"mail_address" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_auths" (
	"user_id" VARCHAR,
	"login_id" VARCHAR,
	"login_password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
