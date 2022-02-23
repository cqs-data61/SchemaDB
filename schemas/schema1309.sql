DROP DATABASE IF EXISTS "schema1309";
CREATE DATABASE "schema1309";
USE "schema1309";
CREATE TABLE "accounts" (
	"id" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"created_date" TIMESTAMP,
	"image" VARCHAR
);

CREATE TABLE "users" (
	"account_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "user_account_id_fk" FOREIGN KEY ("account_id") REFERENCES "accounts" ("id")
);
