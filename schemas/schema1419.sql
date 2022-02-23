DROP DATABASE IF EXISTS "schema1419";
CREATE DATABASE "schema1419";
USE "schema1419";
CREATE TABLE "exercise" (
	"id" SERIAL,
	"name" TEXT,
	"category" TEXT,
	"duration" INTEGER,
	"intensity" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"is_admin" BOOLEAN,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
