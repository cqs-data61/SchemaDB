DROP DATABASE IF EXISTS "schema764";
CREATE DATABASE "schema764";
USE "schema764";
CREATE TABLE "user_favorites" (
	"user_id" INT,
	"item_id" INT
);

CREATE TABLE "user_items" (
	"user_id" INT,
	"item_id" INT
);

CREATE TABLE "items" (
	"item_id" INT,
	"item_type_id" INT,
	"item_permission_type_id" INT,
	"datecreated" DATE,
	"datedeleted" DATE,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "item_permission_types" (
	"item_permission_type_id" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("item_permission_type_id")
);

CREATE TABLE "item_types" (
	"item_type_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("item_type_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"token" VARCHAR,
	 PRIMARY KEY ("user_id")
);
