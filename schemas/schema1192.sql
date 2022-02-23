DROP DATABASE IF EXISTS "schema1192";
CREATE DATABASE "schema1192";
USE "schema1192";
CREATE TABLE "oauth_code" (
	"code" VARCHAR,
	"authentication" BYTEA,
	 PRIMARY KEY ("code")
);

CREATE TABLE "oauth_approvals" (
	"userid" VARCHAR,
	"clientid" VARCHAR,
	"scope" VARCHAR,
	"status" VARCHAR,
	"expiresat" TIMESTAMP,
	"lastmodifiedat" TIMESTAMP,
	 PRIMARY KEY ("userid","clientid","scope")
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" BYTEA,
	"authentication" BYTEA,
	 PRIMARY KEY ("token_id")
);

CREATE TABLE "oauth_access_token" (
	"token_id" VARCHAR,
	"token" BYTEA,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	"authentication" BYTEA,
	"refresh_token" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "web_server_redirect_uris" (
	"client_id" VARCHAR,
	"web_server_redirect_uri" VARCHAR
);

CREATE TABLE "authorized_grant_types" (
	"client_id" VARCHAR,
	"authorized_grant_type" VARCHAR
);

CREATE TABLE "resource_ids" (
	"client_id" VARCHAR,
	"resource_id" VARCHAR
);

CREATE TABLE "scopes" (
	"client_id" VARCHAR,
	"scope" VARCHAR
);

CREATE TABLE "clients" (
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"client_name" VARCHAR,
	"access_token_validity" INTEGER,
	"refresh_token_validity" INTEGER,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("username","authority")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);
