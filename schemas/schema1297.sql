DROP DATABASE IF EXISTS "schema1297";
CREATE DATABASE "schema1297";
USE "schema1297";
CREATE TABLE "_db_version" (
	"version" LONG
);

CREATE TABLE "oauth_public_keys" (
	"client_id" VARCHAR,
	"public_key" VARCHAR,
	"private_key" VARCHAR,
	"encryption_algorithm" VARCHAR
);

CREATE TABLE "oauth_jti" (
	"issuer" VARCHAR,
	"subject" VARCHAR,
	"audiance" VARCHAR,
	"expires" TIMESTAMP,
	"jti" VARCHAR
);

CREATE TABLE "oauth_jwt" (
	"client_id" VARCHAR,
	"subject" VARCHAR,
	"public_key" VARCHAR
);

CREATE TABLE "oauth_scopes" (
	"scope" VARCHAR,
	"is_default" TINYINT,
	 PRIMARY KEY ("scope")
);

CREATE TABLE "oauth_users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"email_verified" TINYINT,
	"scope" VARCHAR
);

CREATE TABLE "oauth_refresh_tokens" (
	"refresh_token" VARCHAR,
	"client_id" VARCHAR,
	"user_id" VARCHAR,
	"expires" TIMESTAMP,
	"scope" VARCHAR,
	 PRIMARY KEY ("refresh_token")
);

CREATE TABLE "oauth_authorization_codes" (
	"authorization_code" VARCHAR,
	"client_id" VARCHAR,
	"user_id" VARCHAR,
	"redirect_uri" VARCHAR,
	"expires" TIMESTAMP,
	"scope" VARCHAR,
	"id_token" VARCHAR,
	 PRIMARY KEY ("authorization_code")
);

CREATE TABLE "oauth_access_tokens" (
	"access_token" VARCHAR,
	"client_id" VARCHAR,
	"user_id" VARCHAR,
	"expires" TIMESTAMP,
	"scope" VARCHAR,
	 PRIMARY KEY ("access_token")
);

CREATE TABLE "oauth_clients" (
	"client_id" VARCHAR,
	"client_secret" VARCHAR,
	"redirect_uri" VARCHAR,
	"grant_types" VARCHAR,
	"scope" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "user" (
	"id" LONG,
	"username" TEXT,
	"firstname" TEXT,
	"lastname" TEXT,
	"email" TEXT,
	"password" TEXT,
	"phone" TEXT,
	"userstatus" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" LONG,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pettag" (
	"pet" LONG
);

CREATE TABLE "petphotourls" (
	"pet" LONG
);

CREATE TABLE "pet" (
	"name" TEXT,
	"id" LONG,
	"category" LONG,
	"status" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order" (
	"id" LONG,
	"petid" LONG,
	"quantity" INT,
	"shipdate" DATETIME,
	"status" TEXT,
	"complete" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" LONG,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "apiresponse" (
	"code" INT,
	"type" TEXT,
	"message" TEXT
);
