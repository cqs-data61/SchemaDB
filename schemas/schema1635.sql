DROP DATABASE IF EXISTS "schema1635";
CREATE DATABASE "schema1635";
USE "schema1635";
CREATE TABLE "oauth_tokens" (
	"id" SERIAL,
	"user_id" INT,
	"app_id" INT,
	"name" VARCHAR,
	"token" VARCHAR,
	"scope" BYTEA,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_codes" (
	"id" SERIAL,
	"user_id" INT,
	"app_id" INT,
	"code" VARCHAR,
	"scope" BYTEA,
	"expires_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_apps" (
	"id" SERIAL,
	"user_id" INT,
	"client_id" VARCHAR,
	"client_secret" BYTEA,
	"name" VARCHAR,
	"description" VARCHAR,
	"home_uri" VARCHAR,
	"redirect_uri" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cron_builds" (
	"id" SERIAL,
	"cron_id" INT,
	"build_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cron" (
	"id" SERIAL,
	"user_id" INT,
	"author_id" INT,
	"namespace_id" INT,
	"name" VARCHAR,
	"schedule" ENUM,
	"manifest" TEXT,
	"prev_run" TIMESTAMP,
	"next_run" TIMESTAMP,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_keys" (
	"id" SERIAL,
	"build_id" INT,
	"key_id" INT,
	"name" VARCHAR,
	"key" BYTEA,
	"config" TEXT,
	"location" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_triggers" (
	"id" SERIAL,
	"build_id" INT,
	"provider_id" INT,
	"repo_id" INT,
	"type" ENUM,
	"comment" TEXT,
	"data" LONGTEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_drivers" (
	"id" SERIAL,
	"build_id" INT,
	"type" ENUM,
	"config" LONGTEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_variables" (
	"id" SERIAL,
	"build_id" INT,
	"variable_id" INT,
	"key" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_artifacts" (
	"id" SERIAL,
	"user_id" INT,
	"build_id" INT,
	"job_id" INT,
	"hash" VARCHAR,
	"source" VARCHAR,
	"name" VARCHAR,
	"size" INT,
	"md5" BYTEA,
	"sha256" BYTEA,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_objects" (
	"id" SERIAL,
	"build_id" INT,
	"object_id" INT,
	"source" VARCHAR,
	"name" VARCHAR,
	"placed" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_jobs" (
	"id" SERIAL,
	"build_id" INT,
	"stage_id" INT,
	"name" VARCHAR,
	"commands" VARCHAR,
	"output" TEXT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"started_at" TIMESTAMP,
	"finished_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_stages" (
	"id" SERIAL,
	"build_id" INT,
	"name" VARCHAR,
	"can_fail" BOOLEAN,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"started_at" TIMESTAMP,
	"finished_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "build_tags" (
	"id" SERIAL,
	"user_id" INT,
	"build_id" INT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "builds" (
	"id" SERIAL,
	"user_id" INT,
	"namespace_id" INT,
	"number" INT,
	"manifest" TEXT,
	"status" ENUM,
	"output" TEXT,
	"secret" TEXT,
	"created_at" TIMESTAMP,
	"started_at" TIMESTAMP,
	"finished_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "keys" (
	"id" SERIAL,
	"user_id" INT,
	"author_id" INT,
	"namespace_id" INT,
	"name" VARCHAR,
	"key" BYTEA,
	"config" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "variables" (
	"id" SERIAL,
	"user_id" INT,
	"author_id" INT,
	"namespace_id" INT,
	"key" VARCHAR,
	"value" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "objects" (
	"id" SERIAL,
	"user_id" INT,
	"author_id" INT,
	"namespace_id" INT,
	"hash" VARCHAR,
	"name" VARCHAR,
	"type" VARCHAR,
	"size" INT,
	"md5" BYTEA,
	"sha256" BYTEA,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "images" (
	"id" SERIAL,
	"user_id" INT,
	"author_id" INT,
	"namespace_id" INT,
	"driver" ENUM,
	"hash" VARCHAR,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "provider_repos" (
	"id" SERIAL,
	"user_id" INT,
	"provider_id" INT,
	"hook_id" INT,
	"repo_id" INT,
	"provider_name" VARCHAR,
	"enabled" BOOLEAN,
	"name" VARCHAR,
	"href" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "namespace_collaborators" (
	"id" SERIAL,
	"namespace_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "namespace_invites" (
	"id" SERIAL,
	"namespace_id" INT,
	"invitee_id" INT,
	"inviter_id" INT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "namespaces" (
	"id" SERIAL,
	"user_id" INT,
	"root_id" INT,
	"parent_id" INT,
	"name" VARCHAR,
	"path" VARCHAR,
	"description" VARCHAR,
	"level" INT,
	"visibility" ENUM,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "providers" (
	"id" SERIAL,
	"user_id" INT,
	"provider_user_id" INT,
	"name" VARCHAR,
	"access_token" BYTEA,
	"refresh_token" BYTEA,
	"connected" BOOLEAN,
	"main_account" BOOLEAN,
	"expires_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account_tokens" (
	"id" SERIAL,
	"user_id" INT,
	"token" VARCHAR,
	"purpose" VARCHAR,
	"created_at" TIMESTAMP,
	"expires_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" BYTEA,
	"verified" BOOLEAN,
	"cleanup" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
