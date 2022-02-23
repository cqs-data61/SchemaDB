DROP DATABASE IF EXISTS "schema1580";
CREATE DATABASE "schema1580";
USE "schema1580";
CREATE TABLE "users" (
	"id" VARCHAR,
	"name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lists" (
	"id" VARCHAR,
	"user_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lists_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "items" (
	"id" VARCHAR,
	"text" CHARACTER VARYING,
	"list_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "items_list_id_fkey" FOREIGN KEY ("list_id") REFERENCES "lists" ("id")
);

CREATE TABLE "slack_users" (
	"id" VARCHAR,
	"name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migration" (
	"version" CHARACTER VARYING
);
