DROP DATABASE IF EXISTS "schema936";
CREATE DATABASE "schema936";
USE "schema936";
CREATE TABLE "installers" (
	"id" VARCHAR,
	"name" TEXT,
	"email" TEXT,
	"password_hash" TEXT,
	"created_at" DATETIME,
	"locked_at" DATETIME,
	"failed_login_attempts" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" VARCHAR,
	"name" TEXT,
	"email" TEXT,
	"password_hash" TEXT,
	"created_at" DATETIME,
	"locked_at" DATETIME,
	"failed_login_attempts" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "negotiations" (
	"id" VARCHAR,
	"installer_id" VARCHAR,
	"user_id" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "negotiations_ref_installer_id" FOREIGN KEY ("installer_id") REFERENCES "installers" ("id"),
	 CONSTRAINT "negotiations_ref_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "messages" (
	"id" VARCHAR,
	"negotiation_id" VARCHAR,
	"body" TEXT,
	"created_at" DATETIME,
	"sent_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "messages_ref_negotiation_id" FOREIGN KEY ("negotiation_id") REFERENCES "negotiations" ("id")
);
