DROP DATABASE IF EXISTS "schema1031";
CREATE DATABASE "schema1031";
USE "schema1031";
CREATE TABLE "builtin_users" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"nickname" VARCHAR,
	"status" SMALLINT,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "builtin_user_cellphones" (
	"id" BIGINT,
	"cellphone" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "builtin_user_cellphones_ibfk_1" FOREIGN KEY ("id") REFERENCES "builtin_users" ("id")
);

CREATE TABLE "builtin_user_open_accounts" (
	"id" BIGINT,
	"provider" VARCHAR,
	"user_id" BIGINT,
	"open_id" VARCHAR,
	"nickname" VARCHAR,
	"language" VARCHAR,
	"city" VARCHAR,
	"province" VARCHAR,
	"country" VARCHAR,
	"avatar_url" VARCHAR,
	"extras" TEXT,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "builtin_user_open_accounts_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "builtin_users" ("id")
);

CREATE TABLE "builtin_roles" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"comment" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "builtin_user_roles" (
	"user_id" BIGINT,
	"role_id" INT,
	"updated" DATETIME,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "builtin_user_roles_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "builtin_users" ("id"),
	 CONSTRAINT "builtin_user_roles_ibfk_2" FOREIGN KEY ("role_id") REFERENCES "builtin_roles" ("id")
);

CREATE TABLE "builtin_permissions" (
	"id" INT,
	"code" VARCHAR,
	"name" VARCHAR,
	"comment" VARCHAR,
	"created" DATETIME,
	"updated" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "builtin_user_permissions" (
	"user_id" BIGINT,
	"permission_id" INT,
	"updated" DATETIME,
	 PRIMARY KEY ("user_id","permission_id"),
	 CONSTRAINT "builtin_user_permissions_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "builtin_users" ("id"),
	 CONSTRAINT "builtin_user_permissions_ibfk_2" FOREIGN KEY ("permission_id") REFERENCES "builtin_permissions" ("id")
);

CREATE TABLE "builtin_role_permissions" (
	"role_id" INT,
	"permission_id" INT,
	"updated" DATETIME,
	 PRIMARY KEY ("role_id","permission_id"),
	 CONSTRAINT "builtin_role_permissions_ibfk_2" FOREIGN KEY ("permission_id") REFERENCES "builtin_permissions" ("id"),
	 CONSTRAINT "builtin_role_permissions_ibfk_1" FOREIGN KEY ("role_id") REFERENCES "builtin_roles" ("id")
);
