DROP DATABASE IF EXISTS "schema731";
CREATE DATABASE "schema731";
USE "schema731";
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
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "role" (
	"role_id" VARCHAR,
	"role_description" VARCHAR,
	"role_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "user" (
	"user_id" VARCHAR,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"cart_id" VARCHAR,
	"password" VARCHAR,
	"user_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "user_roles" (
	"user_id" VARCHAR,
	"role_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 CONSTRAINT "USER_FK" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "ROLE_FK" FOREIGN KEY ("role_id") REFERENCES "role" ("role_id")
);
