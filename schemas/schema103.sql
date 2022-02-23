DROP DATABASE IF EXISTS "schema103";
CREATE DATABASE "schema103";
USE "schema103";
CREATE TABLE "adoption_request" (
	"id" BIGINT,
	"animal" BIGINT,
	"adopter_name" VARCHAR,
	"email" VARCHAR,
	"notes" VARCHAR
);

CREATE TABLE "animal" (
	"id" BIGINT,
	"name" VARCHAR,
	"rescue_date" DATE,
	"avatar_url" VARCHAR,
	"description" VARCHAR
);
