DROP DATABASE IF EXISTS "schema1323";
CREATE DATABASE "schema1323";
USE "schema1323";
CREATE TABLE "user" (
	"id" NUMBER,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email" VARCHAR,
	"status" INTEGER,
	"created_at" NUMBER,
	"updated_at" NUMBER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "menu" (
	"id" NUMBER,
	"name" VARCHAR,
	"parent" NUMBER,
	"route" VARCHAR,
	"order" NUMBER,
	"data" BYTEA,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_menu_to_menu" FOREIGN KEY ("parent") REFERENCES "menu" ("id")
);
