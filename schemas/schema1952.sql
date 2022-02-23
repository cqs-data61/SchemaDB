DROP DATABASE IF EXISTS "schema1952";
CREATE DATABASE "schema1952";
USE "schema1952";
CREATE TABLE "site_links" (
	"site_id" INT,
	"links_id" INT
);

CREATE TABLE "link" (
	"id" SERIAL,
	"url" VARCHAR,
	"code" VARCHAR,
	"count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "site" (
	"id" SERIAL,
	"username" VARCHAR,
	"registration" BOOLEAN,
	"login" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
