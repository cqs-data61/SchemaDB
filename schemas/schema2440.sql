DROP DATABASE IF EXISTS "schema2440";
CREATE DATABASE "schema2440";
USE "schema2440";
CREATE TABLE "transfer" (
	"id" VARCHAR,
	"account_origin_id" VARCHAR,
	"account_destination_id" VARCHAR,
	"amount" VARCHAR,
	"created_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" VARCHAR,
	"name" VARCHAR,
	"cpf" VARCHAR,
	"secret" VARCHAR,
	"balance" FLOAT,
	"created_at" VARCHAR,
	 PRIMARY KEY ("id")
);
