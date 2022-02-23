DROP DATABASE IF EXISTS "schema651";
CREATE DATABASE "schema651";
USE "schema651";
CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"logins" INTEGER,
	"last_login" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_tokens" (
	"id" SERIAL,
	"user_id" INTEGER,
	"user_agent" VARCHAR,
	"token" CHARACTER VARYING,
	"created" INTEGER,
	"expires" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "roles" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles_users" (
	"user_id" INTEGER,
	"role_id" INTEGER,
	 CONSTRAINT "role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
