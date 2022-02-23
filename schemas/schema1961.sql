DROP DATABASE IF EXISTS "schema1961";
CREATE DATABASE "schema1961";
USE "schema1961";
CREATE TABLE "reservations" (
	"id" VARCHAR,
	"schedule_id" VARCHAR,
	"user_id" VARCHAR,
	"created_at" DATETIME
);

CREATE TABLE "schedules" (
	"id" VARCHAR,
	"title" VARCHAR,
	"capacity" INT,
	"created_at" DATETIME
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"nickname" VARCHAR,
	"staff" BOOLEAN,
	"created_at" DATETIME
);
