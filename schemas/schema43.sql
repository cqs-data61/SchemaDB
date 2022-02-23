DROP DATABASE IF EXISTS "schema43";
CREATE DATABASE "schema43";
USE "schema43";
CREATE TABLE "phone_data_set" (
	"id" BIGINT,
	"number" VARCHAR,
	"client_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"id" BIGINT,
	"name" VARCHAR,
	"address_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address_data_set" (
	"id" BIGINT,
	"street" VARCHAR,
	 PRIMARY KEY ("id")
);
