DROP DATABASE IF EXISTS "schema2068";
CREATE DATABASE "schema2068";
USE "schema2068";
CREATE TABLE "messages" (
	"id" BIGINT,
	"author" BIGINT,
	"chatroom" BIGINT,
	"text" TEXT,
	"datetime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chatrooms" (
	"id" BIGINT,
	"name" VARCHAR,
	"owner" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"login" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
