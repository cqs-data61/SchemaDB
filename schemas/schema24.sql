DROP DATABASE IF EXISTS "schema24";
CREATE DATABASE "schema24";
USE "schema24";
CREATE TABLE "account" (
	"user_id" SERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"is_admin" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "website" (
	"website_id" SERIAL,
	"website_uuid" VARCHAR,
	"user_id" INTEGER,
	"name" VARCHAR,
	"domain" VARCHAR,
	"share_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("website_id"),
	 CONSTRAINT "fkeycon_website_to_account" FOREIGN KEY ("user_id") REFERENCES "account" ("user_id")
);

CREATE TABLE "session" (
	"session_id" SERIAL,
	"session_uuid" VARCHAR,
	"website_id" INTEGER,
	"created_at" DATETIME,
	"hostname" VARCHAR,
	"browser" VARCHAR,
	"os" VARCHAR,
	"device" VARCHAR,
	"screen" VARCHAR,
	"language" VARCHAR,
	"country" CHAR,
	 PRIMARY KEY ("session_id"),
	 CONSTRAINT "fkeycon_session_to_website" FOREIGN KEY ("website_id") REFERENCES "website" ("website_id")
);

CREATE TABLE "pageview" (
	"view_id" SERIAL,
	"website_id" INTEGER,
	"session_id" INTEGER,
	"created_at" DATETIME,
	"url" VARCHAR,
	"referrer" VARCHAR,
	 PRIMARY KEY ("view_id"),
	 CONSTRAINT "fkeycon_pageview_to_website" FOREIGN KEY ("website_id") REFERENCES "website" ("website_id"),
	 CONSTRAINT "fkeycon_pageview_to_session" FOREIGN KEY ("session_id") REFERENCES "session" ("session_id")
);

CREATE TABLE "event" (
	"event_id" SERIAL,
	"website_id" INTEGER,
	"session_id" INTEGER,
	"created_at" DATETIME,
	"url" VARCHAR,
	"event_type" VARCHAR,
	"event_value" VARCHAR,
	 PRIMARY KEY ("event_id"),
	 CONSTRAINT "fkeycon_event_to_session" FOREIGN KEY ("session_id") REFERENCES "session" ("session_id"),
	 CONSTRAINT "fkeycon_event_to_website" FOREIGN KEY ("website_id") REFERENCES "website" ("website_id")
);
