DROP DATABASE IF EXISTS "schema412";
CREATE DATABASE "schema412";
USE "schema412";
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

CREATE TABLE "authority" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "user" (
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"activated" BOOLEAN,
	"activationkey" VARCHAR,
	"resetpasswordkey" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "user_authority" (
	"username" VARCHAR,
	"authority" VARCHAR,
	 CONSTRAINT "fkeycon_user_authority_to_authority" FOREIGN KEY ("authority") REFERENCES "authority" ("name"),
	 CONSTRAINT "fkeycon_user_authority_to_user" FOREIGN KEY ("username") REFERENCES "user" ("username")
);
