DROP DATABASE IF EXISTS "schema1699";
CREATE DATABASE "schema1699";
USE "schema1699";
CREATE TABLE "pessimistic_lock" (
	"id" BIGINT,
	"count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "optimistic_lock" (
	"id" BIGINT,
	"count" INT,
	"version" BIGINT,
	 PRIMARY KEY ("id")
);
