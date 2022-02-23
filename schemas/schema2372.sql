DROP DATABASE IF EXISTS "schema2372";
CREATE DATABASE "schema2372";
USE "schema2372";
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

CREATE TABLE "perfil" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "usuario" (
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"activated" BOOLEAN,
	"activationkey" VARCHAR,
	"resetpasswordkey" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "usuario_perfil" (
	"username" VARCHAR,
	"perfil" VARCHAR,
	 CONSTRAINT "fkeycon_usuario_perfil_to_usuario" FOREIGN KEY ("username") REFERENCES "usuario" ("username"),
	 CONSTRAINT "fkeycon_usuario_perfil_to_perfil" FOREIGN KEY ("perfil") REFERENCES "perfil" ("name")
);
