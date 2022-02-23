DROP DATABASE IF EXISTS "schema2224";
CREATE DATABASE "schema2224";
USE "schema2224";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "travels" (
	"id" INT,
	"email_fk" VARCHAR,
	"date" VARCHAR,
	"country" VARCHAR,
	"city" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "clients" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"cellphone" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"photo" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR
);
