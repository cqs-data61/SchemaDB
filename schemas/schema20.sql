DROP DATABASE IF EXISTS "schema20";
CREATE DATABASE "schema20";
USE "schema20";
CREATE TABLE "files" (
	"id" SERIAL,
	"id_project" SERIAL,
	"name" VARCHAR,
	"size" NUMERIC,
	"creation_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"id_user" SERIAL,
	"creation_date" TIMESTAMP,
	"update_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" SERIAL,
	"id_user" SERIAL,
	"key" VARCHAR,
	"creation_date" TIMESTAMP,
	"expire" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"role" VARCHAR,
	"birthday" DATE,
	"creation_date" TIMESTAMP,
	"status" VARCHAR,
	"validation_token" VARCHAR,
	"reset_token" VARCHAR,
	 PRIMARY KEY ("id")
);
