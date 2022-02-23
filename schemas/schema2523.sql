DROP DATABASE IF EXISTS "schema2523";
CREATE DATABASE "schema2523";
USE "schema2523";
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
