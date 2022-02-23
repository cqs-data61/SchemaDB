DROP DATABASE IF EXISTS "schema1239";
CREATE DATABASE "schema1239";
USE "schema1239";
CREATE TABLE "user" (
	"id" INT,
	"login" VARCHAR,
	"email" TEXT,
	"last_name" TEXT,
	"name" TEXT,
	"patronymic" TEXT,
	"password" TEXT,
	"type" INT
);

CREATE TABLE "type_user" (
	"id" INT,
	"name" TEXT
);

CREATE TABLE "status" (
	"id" INT,
	"name" TEXT
);

CREATE TABLE "request" (
	"id" INT,
	"name" TEXT,
	"text" TEXT,
	"category" INT,
	"photo_before" TEXT,
	"date" INT,
	"photo_after" TEXT,
	"reason" TEXT,
	"status" INT,
	"owner" INT
);

CREATE TABLE "category" (
	"id" INT,
	"name" TEXT
);
