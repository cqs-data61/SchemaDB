DROP DATABASE IF EXISTS "schema1710";
CREATE DATABASE "schema1710";
USE "schema1710";
CREATE TABLE "code" (
	"id" INTEGER,
	"codeval" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" TEXT,
	"email" TEXT,
	"username" TEXT,
	"password" TEXT,
	"code_used" TEXT,
	"verified" INT,
	"verif_token" TEXT
);
