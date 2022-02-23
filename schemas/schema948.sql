DROP DATABASE IF EXISTS "schema948";
CREATE DATABASE "schema948";
USE "schema948";
CREATE TABLE "site_statistics" (
	"id" BIGSERIAL,
	"site_id" BIGINT,
	"statistics_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statistics" (
	"id" BIGSERIAL,
	"url_id" BIGINT,
	"site_id" BIGINT,
	"total_calls" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "site_url" (
	"id" BIGSERIAL,
	"site_id" BIGINT,
	"url_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "url" (
	"id" BIGSERIAL,
	"url" VARCHAR,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_site" (
	"id" BIGSERIAL,
	"user_id" BIGINT,
	"site_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"username" VARCHAR,
	"password" VARCHAR,
	"authority_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authorities" (
	"id" BIGSERIAL,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "site" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
