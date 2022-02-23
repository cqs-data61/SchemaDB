DROP DATABASE IF EXISTS "schema663";
CREATE DATABASE "schema663";
USE "schema663";
CREATE TABLE "users" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"username" TEXT,
	"password" TEXT,
	"uuid" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"content" TEXT,
	"longitude" TEXT,
	"latitude" TEXT,
	"url" TEXT,
	"type" TEXT,
	"uuid" TEXT,
	 PRIMARY KEY ("id")
);
