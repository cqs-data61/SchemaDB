DROP DATABASE IF EXISTS "schema1999";
CREATE DATABASE "schema1999";
USE "schema1999";
CREATE TABLE "scheduled_emails" (
	"id" TEXT,
	"recipient" TEXT,
	"subject" TEXT,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" TEXT,
	"login" TEXT,
	"login_lowercase" TEXT,
	"email_lowercase" TEXT,
	"password" TEXT,
	"created_on" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_reset_codes" (
	"id" TEXT,
	"user_id" TEXT,
	"valid_until" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "password_reset_codes_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "api_keys" (
	"id" TEXT,
	"user_id" TEXT,
	"created_on" DATETIME,
	"valid_until" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "api_keys_user_id_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
