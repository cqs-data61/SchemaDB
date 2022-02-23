DROP DATABASE IF EXISTS "schema678";
CREATE DATABASE "schema678";
USE "schema678";
CREATE TABLE "k_pac" (
	"id" BIGINT,
	"created_at" TIMESTAMP,
	"description" VARCHAR,
	"title" VARCHAR,
	"k_pac_set_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "k_pac_set" (
	"id" BIGINT,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);
