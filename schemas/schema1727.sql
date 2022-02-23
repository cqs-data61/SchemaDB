DROP DATABASE IF EXISTS "schema1727";
CREATE DATABASE "schema1727";
USE "schema1727";
CREATE TABLE "users" (
	"id" BIGSERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" BIGSERIAL,
	"content" TEXT,
	"attachment" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
