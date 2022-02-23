DROP DATABASE IF EXISTS "schema303";
CREATE DATABASE "schema303";
USE "schema303";
CREATE TABLE "oauth_approvals" (
	"userid" VARCHAR,
	"clientid" VARCHAR,
	"scope" VARCHAR,
	"status" VARCHAR,
	"expiresat" TIMESTAMP,
	"lastmodifiedat" TIMESTAMP
);

CREATE TABLE "oauth_code" (
	"code" VARCHAR,
	"authentication" BLOB
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" BLOB,
	"authentication" BLOB
);

CREATE TABLE "oauth_access_token" (
	"token_id" VARCHAR,
	"token" BLOB,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	"authentication" BLOB,
	"refresh_token" VARCHAR
);

CREATE TABLE "oauth_client_token" (
	"token_id" VARCHAR,
	"token" BLOB,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "oauth_client_details" (
	"client_id" VARCHAR,
	"client_name" VARCHAR,
	"resource_ids" VARCHAR,
	"client_secret" VARCHAR,
	"scope" VARCHAR,
	"authorized_grant_types" VARCHAR,
	"web_server_redirect_uri" VARCHAR,
	"authorities" VARCHAR,
	"access_token_validity" INTEGER,
	"refresh_token_validity" INTEGER,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR
);

CREATE TABLE "mooc_users" (
	"id" BIGINT,
	"account_non_expired" BIT,
	"account_non_locked" BIT,
	"credentials_non_expired" BIT,
	"email" VARCHAR,
	"enabled" BIT,
	"mfa_key" VARCHAR,
	"mobile" VARCHAR,
	"name" VARCHAR,
	"password_hash" VARCHAR,
	"username" VARCHAR,
	"using_mfa" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mooc_roles" (
	"id" BIGINT,
	"role_name" VARCHAR,
	"display_name" VARCHAR,
	"built_in" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mooc_users_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fk_users_roles_role_id_mooc_roles_id" FOREIGN KEY ("role_id") REFERENCES "mooc_roles" ("id"),
	 CONSTRAINT "fk_users_roles_user_id_mooc_users_id" FOREIGN KEY ("user_id") REFERENCES "mooc_users" ("id")
);

CREATE TABLE "mooc_permissions" (
	"id" BIGINT,
	"permission_name" VARCHAR,
	"display_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mooc_roles_permissions" (
	"role_id" BIGINT,
	"permission_id" BIGINT,
	 PRIMARY KEY ("role_id","permission_id"),
	 CONSTRAINT "fk_roles_permissions_role_id_mooc_roles_id" FOREIGN KEY ("role_id") REFERENCES "mooc_roles" ("id"),
	 CONSTRAINT "fk_roles_permissions_permission_id_mooc_permissions_id" FOREIGN KEY ("permission_id") REFERENCES "mooc_permissions" ("id")
);
