DROP DATABASE IF EXISTS "schema534";
CREATE DATABASE "schema534";
USE "schema534";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" TEXT,
	"email" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "candidate" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
