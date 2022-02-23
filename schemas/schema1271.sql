DROP DATABASE IF EXISTS "schema1271";
CREATE DATABASE "schema1271";
USE "schema1271";
CREATE TABLE "version" (
	"number" INTEGER,
	 PRIMARY KEY ("number")
);

CREATE TABLE "peers" (
	"id" INTEGER,
	"access_hash" INTEGER,
	"type" INTEGER,
	"username" TEXT,
	"phone_number" TEXT,
	"last_update_on" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"dc_id" INTEGER,
	"test_mode" INTEGER,
	"auth_key" BLOB,
	"date" INTEGER,
	"user_id" INTEGER,
	"is_bot" INTEGER,
	 PRIMARY KEY ("dc_id")
);
