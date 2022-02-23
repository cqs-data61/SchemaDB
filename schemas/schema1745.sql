DROP DATABASE IF EXISTS "schema1745";
CREATE DATABASE "schema1745";
USE "schema1745";
CREATE TABLE "verification_requests" (
	"id" INT,
	"identifier" VARCHAR,
	"token" VARCHAR,
	"expires" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified" TIMESTAMP,
	"image" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subs" (
	"id" INT,
	"stripe_sub_id" VARCHAR,
	"stripe_cus_id" VARCHAR,
	"user_id" INT,
	"t" BIGINT,
	"t_canceled" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" INT,
	"user_id" INT,
	"expires" TIMESTAMP,
	"session_token" VARCHAR,
	"access_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" INT,
	"created_at" BIGINT,
	"deleted_at" BIGINT,
	"user_id" INT,
	"text" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounts" (
	"id" INT,
	"compound_id" VARCHAR,
	"user_id" INT,
	"provider_type" VARCHAR,
	"provider_id" VARCHAR,
	"provider_account_id" VARCHAR,
	"refresh_token" TEXT,
	"access_token" TEXT,
	"access_token_expires" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
