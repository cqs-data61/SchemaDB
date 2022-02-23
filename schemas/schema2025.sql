DROP DATABASE IF EXISTS "schema2025";
CREATE DATABASE "schema2025";
USE "schema2025";
CREATE TABLE "shared_lists" (
	"id" SERIAL,
	"owner_id" INTEGER,
	"guest_id" INTEGER,
	"enabled" BOOLEAN,
	"position" SERIAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "list_items" (
	"id" SERIAL,
	"list_id" INTEGER,
	"description" VARCHAR,
	"complete" BOOLEAN,
	"position" SERIAL,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"last_user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lists" (
	"id" SERIAL,
	"user_id" INTEGER,
	"name" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"last_login_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
