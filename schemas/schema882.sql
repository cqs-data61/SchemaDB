DROP DATABASE IF EXISTS "schema882";
CREATE DATABASE "schema882";
USE "schema882";
CREATE TABLE "categories" (
	"id" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "contacts" (
	"id" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"category_id" VARCHAR,
	 CONSTRAINT "fkeycon_contacts_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
