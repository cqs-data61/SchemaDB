DROP DATABASE IF EXISTS "schema2194";
CREATE DATABASE "schema2194";
USE "schema2194";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"email_verified_at" TIMESTAMP,
	"password" CHARACTER VARYING,
	"remember_token" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" CHARACTER VARYING,
	"token" CHARACTER VARYING,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INTEGER,
	"migration" CHARACTER VARYING,
	"batch" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" TEXT,
	"exception" TEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category_messages" (
	"id" BIGINT,
	"message_id" BIGINT,
	"category_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"name" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sender_master" (
	"id" INTEGER,
	"mobile" CHARACTER VARYING,
	"generated" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message_master" (
	"id" INTEGER,
	"message" TEXT,
	"message_signature" CHARACTER VARYING,
	"generated" INTEGER,
	"first_reported" INTEGER,
	"last_reported" INTEGER,
	"report_count" INTEGER,
	"message_type" CHARACTER VARYING,
	"votes" INTEGER,
	"verified_at" TIMESTAMP,
	"last_updated" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"message_id" BIGINT,
	"text" CHARACTER VARYING,
	"commentor" CHARACTER VARYING,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "comments_message_id_foreign" FOREIGN KEY ("message_id") REFERENCES "message_master" ("id")
);

CREATE TABLE "message_log" (
	"id" INTEGER,
	"gateway_id" CHARACTER VARYING,
	"server_generated" INTEGER,
	"generated" INTEGER,
	"message_type" CHARACTER VARYING,
	"value" TEXT,
	"text_value" TEXT,
	"sender_id" INTEGER,
	"message_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "message_log_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "sender_master" ("id"),
	 CONSTRAINT "message_log_message_id_fkey" FOREIGN KEY ("message_id") REFERENCES "message_master" ("id")
);
