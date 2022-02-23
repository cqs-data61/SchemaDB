DROP DATABASE IF EXISTS "schema1625";
CREATE DATABASE "schema1625";
USE "schema1625";
CREATE TABLE "bounces" (
	"id" SERIAL,
	"subscriber_id" INTEGER,
	"campaign_id" INTEGER,
	"type" ENUM,
	"source" TEXT,
	"meta" LONGTEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "settings" (
	"key" TEXT,
	"value" LONGTEXT,
	"updated_at" DATETIME
);

CREATE TABLE "link_clicks" (
	"campaign_id" INTEGER,
	"link_id" INTEGER,
	"subscriber_id" INTEGER,
	"created_at" DATETIME
);

CREATE TABLE "links" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"url" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"provider" TEXT,
	"filename" TEXT,
	"thumb" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "campaign_views" (
	"campaign_id" INTEGER,
	"subscriber_id" INTEGER,
	"created_at" DATETIME
);

CREATE TABLE "campaign_lists" (
	"campaign_id" INTEGER,
	"list_id" INTEGER,
	"list_name" TEXT
);

CREATE TABLE "campaigns" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"name" TEXT,
	"subject" TEXT,
	"from_email" TEXT,
	"body" TEXT,
	"altbody" TEXT,
	"content_type" ENUM,
	"send_at" DATETIME,
	"status" ENUM,
	"tags" VARCHAR,
	"type" ENUM,
	"messenger" TEXT,
	"template_id" INTEGER,
	"to_send" INT,
	"sent" INT,
	"max_subscriber_id" INT,
	"last_subscriber_id" INT,
	"started_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "templates" (
	"id" SERIAL,
	"name" TEXT,
	"body" TEXT,
	"is_default" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscriber_lists" (
	"subscriber_id" INTEGER,
	"list_id" INTEGER,
	"status" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("subscriber_id","list_id")
);

CREATE TABLE "lists" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"name" TEXT,
	"type" ENUM,
	"optin" ENUM,
	"tags" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscribers" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"email" TEXT,
	"name" TEXT,
	"attribs" LONGTEXT,
	"status" ENUM,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
