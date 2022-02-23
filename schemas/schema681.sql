DROP DATABASE IF EXISTS "schema681";
CREATE DATABASE "schema681";
USE "schema681";
CREATE TABLE "pushkeys" (
	"id" BIGSERIAL,
	"owner" BIGINT,
	"token" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" BIGSERIAL,
	"userid" BIGINT,
	"category" TEXT,
	"amount" INT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
