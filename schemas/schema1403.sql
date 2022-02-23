DROP DATABASE IF EXISTS "schema1403";
CREATE DATABASE "schema1403";
USE "schema1403";
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

CREATE TABLE "devices" (
	"id" VARCHAR,
	"name" VARCHAR,
	"checkin" VARCHAR,
	"service" VARCHAR,
	"value" VARCHAR,
	"checkout" VARCHAR,
	"paid" BOOLEAN,
	"contact_id" VARCHAR,
	 CONSTRAINT "fkeycon_devices_to_contacts" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("id")
);
