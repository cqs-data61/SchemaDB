DROP DATABASE IF EXISTS "schema277";
CREATE DATABASE "schema277";
USE "schema277";
CREATE TABLE "accounts" (
	"id" INTEGER,
	"user_id" INTEGER,
	"date" DATE,
	"amount" INTEGER,
	"account" TEXT,
	"name" TEXT,
	"currency" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
