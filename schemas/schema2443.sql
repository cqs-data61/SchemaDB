DROP DATABASE IF EXISTS "schema2443";
CREATE DATABASE "schema2443";
USE "schema2443";
CREATE TABLE "tokens" (
	"token" TEXT,
	"userid" BIGINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("token")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"login" TEXT,
	"password" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
