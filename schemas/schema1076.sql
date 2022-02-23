DROP DATABASE IF EXISTS "schema1076";
CREATE DATABASE "schema1076";
USE "schema1076";
CREATE TABLE "places" (
	"id" INT,
	"place" VARCHAR
);

CREATE TABLE "participants" (
	"id" INT,
	"comment" VARCHAR,
	"user_id" INT,
	"event_id" INT
);

CREATE TABLE "events" (
	"id" INT,
	"name" VARCHAR,
	"date" DATE,
	"place" VARCHAR,
	"fg_delete" VARCHAR,
	"created_at" VARCHAR,
	"created_user_id" INT,
	"updated_at" VARCHAR,
	"updated_user_id" INT,
	"deleted_at" VARCHAR,
	"deleted_user_id" INT
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"location" VARCHAR
);
