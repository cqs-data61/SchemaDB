DROP DATABASE IF EXISTS "schema1117";
CREATE DATABASE "schema1117";
USE "schema1117";
CREATE TABLE "administrators" (
	"id" INTEGER,
	"nickname" VARCHAR,
	"login_name" VARCHAR,
	"pass_hash" VARCHAR
);

CREATE TABLE "reservations" (
	"id" INTEGER,
	"event_id" INTEGER,
	"sheet_id" INTEGER,
	"user_id" INTEGER,
	"reserved_at" DATETIME,
	"canceled_at" DATETIME,
	"event_price" INTEGER
);

CREATE TABLE "sheets" (
	"id" INTEGER,
	"rank" VARCHAR,
	"num" INTEGER,
	"price" INTEGER
);

CREATE TABLE "events" (
	"id" INTEGER,
	"title" VARCHAR,
	"public_fg" TINYINT,
	"closed_fg" TINYINT,
	"price" INTEGER
);

CREATE TABLE "users" (
	"id" INTEGER,
	"nickname" VARCHAR,
	"login_name" VARCHAR,
	"pass_hash" VARCHAR
);
