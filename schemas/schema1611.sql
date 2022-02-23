DROP DATABASE IF EXISTS "schema1611";
CREATE DATABASE "schema1611";
USE "schema1611";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_has_permissions" (
	"permission_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "permissions" (
	"id" BIGINT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "model_has_roles" (
	"role_id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "model_has_permissions" (
	"permission_id" BIGINT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);
