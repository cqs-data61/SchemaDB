DROP DATABASE IF EXISTS "schema1567";
CREATE DATABASE "schema1567";
USE "schema1567";
CREATE TABLE "templates" (
	"id" VARCHAR,
	"aud" VARCHAR,
	"type" VARCHAR,
	"subject" TEXT,
	"url" TEXT,
	"base_url" VARCHAR,
	"url_template" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "identities" (
	"id" VARCHAR,
	"access_key" TEXT,
	"secret_key" TEXT,
	"user_token" TEXT,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "schema_migrations" (
	"version" VARCHAR,
	 PRIMARY KEY ("version")
);

CREATE TABLE "audit_log_entries" (
	"instance_id" VARCHAR,
	"id" VARCHAR,
	"payload" LONGTEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "instances" (
	"id" VARCHAR,
	"uuid" VARCHAR,
	"raw_base_config" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "refresh_tokens" (
	"instance_id" VARCHAR,
	"id" BIGSERIAL,
	"token" VARCHAR,
	"user_id" VARCHAR,
	"revoked" BOOL,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"instance_id" VARCHAR,
	"id" VARCHAR,
	"aud" VARCHAR,
	"role" VARCHAR,
	"email" VARCHAR,
	"encrypted_password" VARCHAR,
	"confirmed_at" DATETIME,
	"invited_at" DATETIME,
	"confirmation_token" VARCHAR,
	"confirmation_sent_at" DATETIME,
	"recovery_token" VARCHAR,
	"recovery_sent_at" DATETIME,
	"email_change_token" VARCHAR,
	"email_change" VARCHAR,
	"email_change_sent_at" DATETIME,
	"last_sign_in_at" DATETIME,
	"raw_app_meta_data" LONGTEXT,
	"raw_user_meta_data" LONGTEXT,
	"is_super_admin" BOOL,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);
