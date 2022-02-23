DROP DATABASE IF EXISTS "schema2302";
CREATE DATABASE "schema2302";
USE "schema2302";
CREATE TABLE "credentials" (
	"id" CHAR,
	"title" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"description" VARCHAR,
	"password_last_update_date" DATE,
	"client_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "service_user" (
	"id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"password_last_update_date" DATE,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
