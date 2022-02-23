DROP DATABASE IF EXISTS "schema431";
CREATE DATABASE "schema431";
USE "schema431";
CREATE TABLE "phones" (
	"id" BIGSERIAL,
	"number" VARCHAR,
	"client_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address" (
	"id" BIGSERIAL,
	"street" VARCHAR,
	"client_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
