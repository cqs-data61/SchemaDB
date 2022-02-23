DROP DATABASE IF EXISTS "schema293";
CREATE DATABASE "schema293";
USE "schema293";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "keluargas" (
	"id" INT,
	"nama" VARCHAR,
	"jenis_kelamin" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
