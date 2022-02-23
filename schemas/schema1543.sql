DROP DATABASE IF EXISTS "schema1543";
CREATE DATABASE "schema1543";
USE "schema1543";
CREATE TABLE "oauth2_client" (
	"id" BIGINT,
	"client_name" VARCHAR,
	"client_id" VARCHAR,
	"client_secret" VARCHAR
);

CREATE TABLE "oauth2_user" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR
);
