DROP DATABASE IF EXISTS "schema2355";
CREATE DATABASE "schema2355";
USE "schema2355";
CREATE TABLE "contacts" (
	"id" BIGINT,
	"fullname" VARCHAR,
	"job" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contact_items" (
	"id" BIGINT,
	"contact_id" BIGINT,
	"contact_item_type" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_contact" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("id")
);
