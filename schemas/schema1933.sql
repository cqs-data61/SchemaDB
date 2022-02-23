DROP DATABASE IF EXISTS "schema1933";
CREATE DATABASE "schema1933";
USE "schema1933";
CREATE TABLE "client" (
	"id" IDENTITY,
	"company_id" BIGINT,
	"name" CHAR,
	"email" CHAR,
	"phone" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"id" IDENTITY,
	"name" CHAR,
	"address" CHAR,
	 PRIMARY KEY ("id")
);
