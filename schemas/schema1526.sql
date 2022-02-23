DROP DATABASE IF EXISTS "schema1526";
CREATE DATABASE "schema1526";
USE "schema1526";
CREATE TABLE "active_users" (
	"id" INTEGER,
	"app_id" INTEGER,
	"date" DATE,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" INTEGER,
	"app_id" INTEGER,
	"story_id" INTEGER,
	"date" DATE,
	"type" TEXT,
	"count" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "story_metadatas" (
	"story_id" INTEGER,
	"app_id" INTEGERNOT,
	"metadata" TEXT,
	 PRIMARY KEY ("story_id")
);

CREATE TABLE "apps" (
	"id" INTEGER,
	"token" TEXT,
	 PRIMARY KEY ("id")
);
