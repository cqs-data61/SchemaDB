DROP DATABASE IF EXISTS "schema11";
CREATE DATABASE "schema11";
USE "schema11";
CREATE TABLE "container" (
	"id" INTEGER,
	"name" VARCHAR,
	"owner" INTEGER
);

CREATE TABLE "credential" (
	"id" INTEGER,
	"username" VARCHAR,
	"container" INTEGER,
	"password" VARCHAR,
	 CONSTRAINT "fkeycon_credential_to_container" FOREIGN KEY ("container") REFERENCES "container" ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR
);
