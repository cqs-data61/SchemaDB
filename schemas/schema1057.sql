DROP DATABASE IF EXISTS "schema1057";
CREATE DATABASE "schema1057";
USE "schema1057";
CREATE TABLE "event" (
	"event_id" SERIAL,
	"website_id" INT,
	"session_id" INT,
	"created_at" DATETIME,
	"url" VARCHAR,
	"event_type" VARCHAR,
	"event_value" VARCHAR,
	 PRIMARY KEY ("event_id")
);

CREATE TABLE "pageview" (
	"view_id" SERIAL,
	"website_id" INT,
	"session_id" INT,
	"created_at" DATETIME,
	"url" VARCHAR,
	"referrer" VARCHAR,
	 PRIMARY KEY ("view_id")
);

CREATE TABLE "session" (
	"session_id" SERIAL,
	"session_uuid" VARCHAR,
	"website_id" INT,
	"created_at" DATETIME,
	"hostname" VARCHAR,
	"browser" VARCHAR,
	"os" VARCHAR,
	"device" VARCHAR,
	"screen" VARCHAR,
	"language" VARCHAR,
	"country" CHAR,
	 PRIMARY KEY ("session_id")
);

CREATE TABLE "website" (
	"website_id" SERIAL,
	"website_uuid" VARCHAR,
	"user_id" INT,
	"name" VARCHAR,
	"domain" VARCHAR,
	"share_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("website_id")
);

CREATE TABLE "account" (
	"user_id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"is_admin" BOOL,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("user_id")
);
