DROP DATABASE IF EXISTS "schema1536";
CREATE DATABASE "schema1536";
USE "schema1536";
CREATE TABLE "contact" (
	"phone" VARCHAR,
	"contact_name" VARCHAR
);

CREATE TABLE "bnext_user" (
	"bnext_user_id" BIGINT,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"phone" VARCHAR
);

CREATE TABLE "bnext_user_contact" (
	"bnext_user_id" BIGINT,
	"phone" VARCHAR,
	 PRIMARY KEY ("bnext_user_id","phone"),
	 CONSTRAINT "FK_BNEXT_USER" FOREIGN KEY ("bnext_user_id") REFERENCES "bnext_user" ("bnext_user_id"),
	 CONSTRAINT "FK_CONTACT" FOREIGN KEY ("phone") REFERENCES "contact" ("phone")
);
