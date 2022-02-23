DROP DATABASE IF EXISTS "schema1731";
CREATE DATABASE "schema1731";
USE "schema1731";
CREATE TABLE "secert" (
	"id" INTEGER,
	"secert" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("id")
);
