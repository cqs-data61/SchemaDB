DROP DATABASE IF EXISTS "schema1776";
CREATE DATABASE "schema1776";
USE "schema1776";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"permissions" TEXT,
	"last_login" TIMESTAMP,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "throttle" (
	"id" INT,
	"user_id" INT,
	"type" VARCHAR,
	"ip" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_users" (
	"user_id" INT,
	"role_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id","role_id")
);

CREATE TABLE "roles" (
	"id" INT,
	"slug" VARCHAR,
	"name" VARCHAR,
	"permissions" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reminders" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"completed" TINYINT,
	"completed_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "persistences" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "activations" (
	"id" INT,
	"user_id" INT,
	"code" VARCHAR,
	"completed" TINYINT,
	"completed_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
