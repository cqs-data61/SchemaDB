DROP DATABASE IF EXISTS "schema2504";
CREATE DATABASE "schema2504";
USE "schema2504";
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
