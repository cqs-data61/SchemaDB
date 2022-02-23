DROP DATABASE IF EXISTS "schema1107";
CREATE DATABASE "schema1107";
USE "schema1107";
CREATE TABLE "product" (
	"id" SERIAL,
	"name" VARCHAR,
	"price" VARCHAR,
	"currency" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "authority" (
	"id" SERIAL,
	"name" VARCHAR,
	"users_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" VARCHAR,
	"password" TEXT,
	"algorithm" TEXT,
	 PRIMARY KEY ("id")
);
