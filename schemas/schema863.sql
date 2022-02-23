DROP DATABASE IF EXISTS "schema863";
CREATE DATABASE "schema863";
USE "schema863";
CREATE TABLE "user_sccount" (
	"id" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "base_table" (
	"created_at" TIMESTAMP,
	"upted_at" TIMESTAMP
);
