DROP DATABASE IF EXISTS "schema2407";
CREATE DATABASE "schema2407";
USE "schema2407";
CREATE TABLE "attaches" (
	"id" SERIAL,
	"blob" BYTEA,
	"item_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"description" TEXT,
	"item_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" SERIAL,
	"header" CHARACTER VARYING,
	"description" TEXT,
	"user_id" INTEGER,
	"category_id" INTEGER,
	"state_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "state" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	"role_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rulesroles" (
	"id" SERIAL,
	"role_id" INTEGER,
	"rules_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rules" (
	"id" SERIAL,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);
