DROP DATABASE IF EXISTS "schema572";
CREATE DATABASE "schema572";
USE "schema572";
CREATE TABLE "posts" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"body" TEXT,
	"user_id" INTEGER,
	"thread_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "threads" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"topic" TEXT,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"email" VARCHAR,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"uuid" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
