DROP DATABASE IF EXISTS "schema1236";
CREATE DATABASE "schema1236";
USE "schema1236";
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
	"authentication" VARBINARY
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" VARBINARY,
	"authentication" VARBINARY
);

CREATE TABLE "oauth_access_token" (
	"token_id" VARCHAR,
	"token" VARBINARY,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	"authentication" VARBINARY,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "oauth_client_token" (
	"token_id" VARCHAR,
	"token" VARBINARY,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "role_user" (
	"role_id" INT,
	"user_id" INT
);

CREATE TABLE "permission_role" (
	"permission_id" INT,
	"role_id" INT
);

CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"enabled" TINYINT,
	"accountnonexpired" TINYINT,
	"credentialsnonexpired" TINYINT,
	"accountnonlocked" TINYINT
);

CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "permission" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "oauth_client_details" (
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"web_server_redirect_uri" VARCHAR,
	"scope" VARCHAR,
	"access_token_validity" INT,
	"refresh_token_validity" INT,
	"resource_ids" VARCHAR,
	"authorized_grant_types" VARCHAR,
	"authorities" VARCHAR,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR
);
