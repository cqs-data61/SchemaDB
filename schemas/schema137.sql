DROP DATABASE IF EXISTS "schema137";
CREATE DATABASE "schema137";
USE "schema137";
CREATE TABLE "transaction" (
	"id" BIGSERIAL,
	"bin_id" VARCHAR,
	"operation" TEXT,
	"timestamp" TIMESTAMP,
	"completed" TIMESTAMP,
	"ip" VARCHAR,
	"client_id" VARCHAR,
	"method" VARCHAR,
	"path" TEXT,
	"filename" TEXT,
	"headers" TEXT,
	"status" INT,
	"req_bytes" INT,
	"resp_bytes" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file" (
	"id" BIGSERIAL,
	"bin_id" VARCHAR,
	"filename" VARCHAR,
	"in_storage" BOOLEAN,
	"mime" VARCHAR,
	"bytes" BIGINT,
	"md5" VARCHAR,
	"sha256" VARCHAR,
	"downloads" BIGINT,
	"updates" BIGINT,
	"ip" VARCHAR,
	"client_id" VARCHAR,
	"headers" TEXT,
	"nonce" VARCHAR,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bin" (
	"id" VARCHAR,
	"readonly" BOOLEAN,
	"updated_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"expired_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	"approved_at" TIMESTAMP,
	"downloads" BIGINT,
	"updates" BIGINT,
	 PRIMARY KEY ("id")
);
