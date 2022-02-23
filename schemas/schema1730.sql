DROP DATABASE IF EXISTS "schema1730";
CREATE DATABASE "schema1730";
USE "schema1730";
CREATE TABLE "shiro_user_role" (
	"id" BIGINT,
	"role_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shiro_role_permission" (
	"id" BIGINT,
	"permission_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shiro_role" (
	"id" BIGINT,
	"description" VARCHAR,
	"name" VARCHAR,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "shiro_permission" (
	"id" BIGINT,
	"description" VARCHAR,
	"name" VARCHAR,
	"parent_id" BIGINT,
	"version" INT,
	"weight" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mto_user_oauth" (
	"id" BIGINT,
	"user_id" BIGINT,
	"access_token" VARCHAR,
	"expire_in" VARCHAR,
	"oauth_code" VARCHAR,
	"oauth_type" INT,
	"oauth_user_id" VARCHAR,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mto_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"name" VARCHAR,
	"avatar" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"status" INT,
	"created" DATETIME,
	"updated" DATETIME,
	"last_login" DATETIME,
	"gender" INT,
	"role_id" INT,
	"comments" INT,
	"posts" INT,
	"signature" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mto_options" (
	"id" BIGINT,
	"key_" VARCHAR,
	"type" INT,
	"value" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mto_channel" (
	"id" INT,
	"key_" VARCHAR,
	"name" VARCHAR,
	"status" INT,
	"thumbnail" VARCHAR,
	"weight" INT,
	 PRIMARY KEY ("id")
);
