DROP DATABASE IF EXISTS "schema480";
CREATE DATABASE "schema480";
USE "schema480";
CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 PRIMARY KEY ("username","authority")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" INT,
	 PRIMARY KEY ("id")
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
