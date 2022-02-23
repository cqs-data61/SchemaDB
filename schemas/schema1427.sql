DROP DATABASE IF EXISTS "schema1427";
CREATE DATABASE "schema1427";
USE "schema1427";
CREATE TABLE "sys_user_role" (
	"id" BIGINT,
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_role" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sys_client_details" (
	"id" BIGINT,
	"access_token_validity_seconds" INT,
	"authorizations" VARCHAR,
	"auto_approve_scopes" VARCHAR,
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"grant_types" VARCHAR,
	"redirect_url" VARCHAR,
	"refresh_token_validity_seconds" INT,
	"resource_ids" VARCHAR,
	"scopes" VARCHAR,
	 PRIMARY KEY ("id")
);
