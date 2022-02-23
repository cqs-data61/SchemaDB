DROP DATABASE IF EXISTS "schema1714";
CREATE DATABASE "schema1714";
USE "schema1714";
CREATE TABLE "roles" (
	"role_id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "users" (
	"user_id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "users_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 CONSTRAINT "fkeycon_users_roles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_users_roles_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "providers" (
	"id" BIGINT,
	"name" VARCHAR,
	"country" VARCHAR,
	"creation_date" TIMESTAMP,
	"created_by" VARCHAR,
	"modification_date" TIMESTAMP,
	"modified_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "beers" (
	"id" BIGINT,
	"provider_id" BIGINT,
	"name" VARCHAR,
	"graduation" VARCHAR,
	"type" VARCHAR,
	"description" VARCHAR,
	"creation_date" TIMESTAMP,
	"created_by" VARCHAR,
	"modification_date" TIMESTAMP,
	"modified_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_beers_to_providers" FOREIGN KEY ("provider_id") REFERENCES "providers" ("id")
);
