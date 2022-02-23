DROP DATABASE IF EXISTS "schema161";
CREATE DATABASE "schema161";
USE "schema161";
CREATE TABLE "permissions" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_permissions" (
	"id" BIGINT,
	"role_id" BIGINT,
	"permission_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_role_permissions_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fkeycon_role_permissions_to_permissions" FOREIGN KEY ("permission_id") REFERENCES "permissions" ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"is_enable" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_roles" (
	"id" BIGINT,
	"user_id" BIGINT,
	"role_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_roles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_user_roles_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
