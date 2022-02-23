DROP DATABASE IF EXISTS "schema95";
CREATE DATABASE "schema95";
USE "schema95";
CREATE TABLE "users_2" (
	"id" DOUBLE,
	"uuid" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"activation_token" VARCHAR,
	"status" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"enabled" TINYINT
);

CREATE TABLE "user_roles" (
	"user_id" DOUBLE,
	"role_id" DOUBLE
);

CREATE TABLE "user_push_tokens" (
	"id" DOUBLE,
	"created_at" DATETIME,
	"device_name" VARCHAR,
	"options" VARCHAR,
	"token" VARCHAR,
	"updated_at" DATETIME,
	"user_id" DOUBLE
);

CREATE TABLE "user_preferences" (
	"id" DOUBLE,
	"color_theme" VARCHAR,
	"created_at" DATETIME,
	"direction" VARCHAR,
	"locale" VARCHAR,
	"options" VARCHAR,
	"sidebar" VARCHAR,
	"updated_at" DATETIME,
	"academic_session_id" DOUBLE,
	"user_id" DOUBLE
);

CREATE TABLE "uploads" (
	"id" DOUBLE,
	"created_at" DATETIME,
	"filename" VARCHAR,
	"is_temp_delete" TINYINT,
	"module" VARCHAR,
	"module_id" DOUBLE,
	"options" VARCHAR,
	"status" TINYINT,
	"updated_at" DATETIME,
	"upload_token" VARCHAR,
	"user_filename" VARCHAR,
	"uuid" VARCHAR,
	"user_id" DOUBLE
);

CREATE TABLE "roles_2" (
	"id" DOUBLE,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "postal_records" (
	"id" DOUBLE,
	"created_at" DATETIME,
	"date" DATE,
	"description" VARCHAR,
	"is_confidential" TINYINT,
	"options" VARCHAR,
	"receiver_address" BLOB,
	"receiver_title" VARCHAR,
	"reference_number" VARCHAR,
	"sender_address" BLOB,
	"sender_title" VARCHAR,
	"type" VARCHAR,
	"updated_at" DATETIME,
	"upload_token" VARCHAR,
	"uuid" VARCHAR,
	"user_id" DOUBLE
);

CREATE TABLE "master_tenant_tab" (
	"id" INT,
	"database_name" VARCHAR,
	"driver_class_name" VARCHAR,
	"jdbc_url" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "backups" (
	"id" DOUBLE,
	"created_at" DATETIME,
	"file" VARCHAR,
	"options" BLOB,
	"updated_at" DATETIME,
	"user_id" DOUBLE
);

CREATE TABLE "academic_sessions" (
	"id" DOUBLE,
	"name" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"is_default" TINYINT,
	"description" BLOB,
	"options" BLOB,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
