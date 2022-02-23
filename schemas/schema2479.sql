DROP DATABASE IF EXISTS "schema2479";
CREATE DATABASE "schema2479";
USE "schema2479";
CREATE TABLE "permission" (
	"id" BIGINT,
	"url" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"pid" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_permission" (
	"role_id" BIGINT,
	"permission_id" BIGINT
);

CREATE TABLE "user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT
);

CREATE TABLE "role" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" BLOB,
	"authentication" BLOB
);

CREATE TABLE "oauth_code" (
	"code" VARCHAR,
	"authentication" BLOB
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
	"resource_ids" VARCHAR,
	"client_secret" VARCHAR,
	"scope" VARCHAR,
	"authorized_grant_types" VARCHAR,
	"web_server_redirect_uri" VARCHAR,
	"authorities" VARCHAR,
	"access_token_validity" INT,
	"refresh_token_validity" INT,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "oauth_approvals" (
	"userid" VARCHAR,
	"clientid" VARCHAR,
	"scope" VARCHAR,
	"status" VARCHAR,
	"expiresat" DATETIME,
	"lastmodifiedat" DATETIME
);

CREATE TABLE "oauth_access_token" (
	"token_id" VARCHAR,
	"token" BLOB,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	"authentication" BLOB,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "clientdetails" (
	"appid" VARCHAR,
	"resourceids" VARCHAR,
	"appsecret" VARCHAR,
	"scope" VARCHAR,
	"granttypes" VARCHAR,
	"redirecturl" VARCHAR,
	"authorities" VARCHAR,
	"access_token_validity" INT,
	"refresh_token_validity" INT,
	"additionalinformation" VARCHAR,
	"autoapprovescopes" VARCHAR,
	 PRIMARY KEY ("appid")
);
