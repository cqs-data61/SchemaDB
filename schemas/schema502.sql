DROP DATABASE IF EXISTS "schema502";
CREATE DATABASE "schema502";
USE "schema502";
CREATE TABLE "pass_transactions" (
	"id" SERIAL,
	"pass_id" VARCHAR,
	"user_id" INTEGER,
	"value" INTEGER,
	"time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "organisers" (
	"id" SERIAL,
	"event_id" INTEGER,
	"user_id" INTEGER,
	"can_create" BOOLEAN,
	"can_remove" BOOLEAN,
	"can_stamp" BOOLEAN,
	"can_unstamp" BOOLEAN,
	"can_topup" BOOLEAN,
	"can_deduct" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "passes" (
	"id" VARCHAR,
	"event_id" INTEGER,
	"user_id" INTEGER,
	"value" INTEGER,
	"extra_info" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tickets" (
	"id" VARCHAR,
	"event_id" INTEGER,
	"user_id" INTEGER,
	"extra_info" TEXT,
	"stamped" BOOLEAN,
	"stamped_at" DATETIME,
	"stamped_by" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events" (
	"id" SERIAL,
	"user_id" INTEGER,
	"title" TEXT,
	"extra_info" TEXT,
	"date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"passhash" TEXT,
	 PRIMARY KEY ("id")
);
