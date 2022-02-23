DROP DATABASE IF EXISTS "schema331";
CREATE DATABASE "schema331";
USE "schema331";
CREATE TABLE "sf_guard_user_permission" (
	"user_id" BIGINT,
	"permission_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("user_id","permission_id")
);

CREATE TABLE "sf_guard_user_group" (
	"user_id" BIGINT,
	"group_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("user_id","group_id")
);

CREATE TABLE "sf_guard_user" (
	"id" BIGINT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	"username" VARCHAR,
	"algorithm" VARCHAR,
	"salt" VARCHAR,
	"password" VARCHAR,
	"is_active" TINYINT,
	"is_super_admin" TINYINT,
	"last_login" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sf_guard_remember_key" (
	"id" BIGINT,
	"user_id" BIGINT,
	"remember_key" VARCHAR,
	"ip_address" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sf_guard_permission" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sf_guard_group_permission" (
	"group_id" BIGINT,
	"permission_id" BIGINT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("group_id","permission_id")
);

CREATE TABLE "sf_guard_group" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" TEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sf_guard_forgot_password" (
	"id" BIGINT,
	"user_id" BIGINT,
	"unique_key" VARCHAR,
	"expires_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "news" (
	"id" BIGINT,
	"name" VARCHAR,
	"announce" TEXT,
	"description" LONGTEXT,
	"image" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"position" BIGINT,
	 PRIMARY KEY ("id")
);
