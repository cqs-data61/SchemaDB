DROP DATABASE IF EXISTS "schema1414";
CREATE DATABASE "schema1414";
USE "schema1414";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_user_permissions" (
	"user_id" INT,
	"permission_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"avatar" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_role_users" (
	"role_id" INT,
	"user_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_role_permissions" (
	"role_id" INT,
	"permission_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_role_menu" (
	"role_id" INT,
	"menu_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_roles" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_permissions" (
	"id" INT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"http_method" VARCHAR,
	"http_path" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_operation_log" (
	"id" INT,
	"user_id" INT,
	"path" VARCHAR,
	"method" VARCHAR,
	"ip" VARCHAR,
	"input" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_menu" (
	"id" INT,
	"parent_id" INT,
	"order" INT,
	"title" VARCHAR,
	"icon" VARCHAR,
	"uri" VARCHAR,
	"permission" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
