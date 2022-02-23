DROP DATABASE IF EXISTS "schema1987";
CREATE DATABASE "schema1987";
USE "schema1987";
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
	"authentication" LONGVARBINARY
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" LONGVARBINARY,
	"authentication" LONGVARBINARY
);

CREATE TABLE "oauth_access_token" (
	"token_id" VARCHAR,
	"token" LONGVARBINARY,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	"authentication" LONGVARBINARY,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "oauth_client_token" (
	"token_id" VARCHAR,
	"token" LONGVARBINARY,
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
	"access_token_validity" INTEGER,
	"refresh_token_validity" INTEGER,
	"additional_information" VARCHAR,
	"autoapprove" VARCHAR,
	 PRIMARY KEY ("client_id")
);
