DROP DATABASE IF EXISTS "schema755";
CREATE DATABASE "schema755";
USE "schema755";
CREATE TABLE "tweets" (
	"id" SERIAL,
	"message" TEXT,
	 PRIMARY KEY ("id")
);
