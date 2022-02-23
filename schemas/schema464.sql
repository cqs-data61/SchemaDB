DROP DATABASE IF EXISTS "schema464";
CREATE DATABASE "schema464";
USE "schema464";
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
	"authentication" BYTEA
);

CREATE TABLE "oauth_refresh_token" (
	"token_id" VARCHAR,
	"token" BYTEA,
	"authentication" BYTEA
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

CREATE TABLE "oauth_client_token" (
	"token_id" VARCHAR,
	"token" BYTEA,
	"authentication_id" VARCHAR,
	"user_name" VARCHAR,
	"client_id" VARCHAR,
	 PRIMARY KEY ("authentication_id")
);

CREATE TABLE "muser" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"enabled" SMALLINT,
	"accountnonexpired" SMALLINT,
	"credentialsnonexpired" SMALLINT,
	"accountnonlocked" SMALLINT,
	"createdat" TIMESTAMP,
	"modifiedat" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_user" (
	"role_id" INT,
	"user_id" INT,
	 CONSTRAINT "role_user_ibfk_2" FOREIGN KEY ("user_id") REFERENCES "muser" ("id"),
	 CONSTRAINT "role_user_ibfk_1" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);

CREATE TABLE "permission" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permission_role" (
	"permission_id" INT,
	"role_id" INT,
	 CONSTRAINT "permission_role_ibfk_1" FOREIGN KEY ("permission_id") REFERENCES "permission" ("id"),
	 CONSTRAINT "permission_role_ibfk_2" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
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
	"autoapprove" VARCHAR,
	 PRIMARY KEY ("client_id")
);
