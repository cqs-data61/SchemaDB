DROP DATABASE IF EXISTS "schema694";
CREATE DATABASE "schema694";
USE "schema694";
CREATE TABLE "reg_users" (
	"username" VARCHAR,
	"email" VARCHAR,
	"signup_date" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INTEGER,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "websites" (
	"web_id" INTEGER,
	"user_id" INTEGER,
	"web_name" VARCHAR,
	"web_email" VARCHAR,
	"web_pass" VARCHAR,
	"nota" VARCHAR,
	"web_username" VARCHAR,
	 PRIMARY KEY ("web_id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
