DROP DATABASE IF EXISTS "schema885";
CREATE DATABASE "schema885";
USE "schema885";
CREATE TABLE "tokens" (
	"user_id" BIGINT,
	"token" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("token")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"login" TEXT,
	"password" TEXT,
	"secret_phrase" TEXT,
	"roles" TEXT,
	"removed" BOOLEAN,
	"modified" TIMESTAMP,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
