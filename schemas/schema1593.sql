DROP DATABASE IF EXISTS "schema1593";
CREATE DATABASE "schema1593";
USE "schema1593";
CREATE TABLE "workorders" (
	"id" BIGINT,
	"date" VARCHAR,
	"client" VARCHAR,
	"address" VARCHAR,
	"wo_no" VARCHAR,
	"ac_no" VARCHAR,
	"wo_type" VARCHAR,
	"fat" VARCHAR,
	"tag" VARCHAR,
	"pon" VARCHAR,
	"signal" VARCHAR,
	"decoder" VARCHAR,
	"fiber" VARCHAR,
	"utp" VARCHAR,
	"prewire" VARCHAR,
	"comment" LONGTEXT,
	"team" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"two_factor_secret" TEXT,
	"two_factor_recovery_codes" TEXT,
	"remember_token" VARCHAR,
	"current_team_id" BIGINT,
	"profile_photo_path" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "team_user" (
	"id" BIGINT,
	"team_id" BIGINT,
	"user_id" BIGINT,
	"role" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "team_invitations" (
	"id" BIGINT,
	"team_id" BIGINT,
	"email" VARCHAR,
	"role" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "teams" (
	"id" BIGINT,
	"user_id" BIGINT,
	"name" VARCHAR,
	"personal_team" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "sessions" (
	"id" VARCHAR,
	"user_id" BIGINT,
	"ip_address" VARCHAR,
	"user_agent" TEXT,
	"payload" TEXT,
	"last_activity" INT
);

CREATE TABLE "personal_access_tokens" (
	"id" BIGINT,
	"tokenable_type" VARCHAR,
	"tokenable_id" BIGINT,
	"name" VARCHAR,
	"token" VARCHAR,
	"abilities" TEXT,
	"last_used_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);
