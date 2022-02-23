DROP DATABASE IF EXISTS "schema299";
CREATE DATABASE "schema299";
USE "schema299";
CREATE TABLE "sessions" (
	"sess_id" VARBINARY,
	"sess_data" BLOB,
	"sess_lifetime" INTEGER,
	"sess_time" INTEGER,
	 PRIMARY KEY ("sess_id")
);

CREATE TABLE "challenge_winners" (
	"id" INT,
	"participant_id" INT,
	"email" VARCHAR,
	"name" VARCHAR,
	"address" TEXT,
	"phone" VARCHAR,
	"prize" VARCHAR,
	"created_at" DATETIME,
	"archived" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "challenge_participants" (
	"id" INT,
	"issuer" VARCHAR,
	"complete" TINYINT,
	"status_active" TINYINT,
	"status_issued_before" TINYINT,
	"status_confidential" TINYINT,
	"status_lifetime" TINYINT,
	"status_scope" TINYINT,
	"status_custom_claim" TINYINT,
	"attempts" INT,
	"claims" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "results" (
	"id" INT,
	"issuer_id" INT,
	"test" VARCHAR,
	"success" TINYINT,
	"message" TEXT,
	"data" LONGTEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "issuers" (
	"id" INT,
	"uri" VARCHAR,
	"email" VARCHAR,
	"scopes" VARCHAR,
	"created_at" DATETIME,
	"last_logged_in_at" DATETIME,
	 PRIMARY KEY ("id")
);
