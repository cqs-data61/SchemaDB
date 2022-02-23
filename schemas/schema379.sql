DROP DATABASE IF EXISTS "schema379";
CREATE DATABASE "schema379";
USE "schema379";
CREATE TABLE "verification_requests" (
	"id" SERIAL,
	"identifier" VARCHAR,
	"token" VARCHAR,
	"expires" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified" DATETIME,
	"image" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" SERIAL,
	"user_id" INTEGER,
	"expires" DATETIME,
	"session_token" VARCHAR,
	"access_token" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" SERIAL,
	"compound_id" VARCHAR,
	"user_id" INTEGER,
	"provider_type" VARCHAR,
	"provider_id" VARCHAR,
	"provider_account_id" VARCHAR,
	"refresh_token" TEXT,
	"access_token" TEXT,
	"access_token_expires" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
