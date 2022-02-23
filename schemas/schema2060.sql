DROP DATABASE IF EXISTS "schema2060";
CREATE DATABASE "schema2060";
USE "schema2060";
CREATE TABLE "repos" (
	"_id" SERIAL,
	"url" VARCHAR,
	 PRIMARY KEY ("_id")
);

CREATE TABLE "users" (
	"_id" SERIAL,
	"itu_username" VARCHAR,
	"github_username" VARCHAR,
	"primary_email" VARCHAR,
	"secondary_email" VARCHAR,
	"last_login" DATE,
	 PRIMARY KEY ("primary_email")
);
