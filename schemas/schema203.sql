DROP DATABASE IF EXISTS "schema203";
CREATE DATABASE "schema203";
USE "schema203";
CREATE TABLE "billing_rule" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"billing_group_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "billing_group" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"query" VARCHAR,
	 PRIMARY KEY ("id")
);
